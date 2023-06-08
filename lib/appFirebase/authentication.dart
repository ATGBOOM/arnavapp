import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final _logger = locator<LoggerUtils>();
  final _TAG = "Authentication";
  // step 1
  Future<User?> initialiseFirebase() async{
    await Firebase.initializeApp();
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null){
      _logger.log(_TAG, "user sign in successful");
    }
    else{
      _logger.log(_TAG, "user sign in failed");
    }
    return Future.value(currentUser);
  }

  //step 2
  Future<User?> startGoogleSignIn() async{
    FirebaseAuth currentAuth = FirebaseAuth.instance;
    User? currentUser;
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? gmailAccounts = await googleSignIn.signIn();
    if (gmailAccounts != null){
      GoogleSignInAuthentication googleSignInAuthentication = await gmailAccounts.authentication;
      await gmailAccounts.authentication;

      AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken, idToken: googleSignInAuthentication.idToken
      );
      try{
        final UserCredential userCredential = await currentAuth.signInWithCredential(authCredential);
        currentUser = userCredential.user;

        return Future.value(currentUser);
      }
      on FirebaseAuthException catch (e){
        _logger.log(_TAG, "firebase authentication failed$e");
        return Future.error("authentication failed");
      }
      catch(e){
        _logger.log(_TAG, "error occured$e");
        return Future.error("something went wrong");
      }
    }

  }
}