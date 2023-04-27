import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final _logger = locator<LoggerUtils>();
  final _TAG = "Authentication";
  Future<void> initialiseFirebase() async{
    await Firebase.initializeApp();
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null){
      _logger.log(_TAG, "user sign in successful");
    }
    else{
      _logger.log(_TAG, "user sign in failed");
    }
  }

  Future<void> startGoogleSignIn() async{
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
        final firebaseFolderRef = FirebaseStorage.instance.ref().child("collars");
        final collarImageList = await firebaseFolderRef.listAll();
        for(var currentImageItem in collarImageList.items){
          String imageURL = await currentImageItem.getDownloadURL();
          _logger.log(_TAG, "current image item${imageURL}");

        }
      }
      on FirebaseAuthException catch (e){
        _logger.log(_TAG, "firebase authentication failed$e");
      }
      catch(e){
        _logger.log(_TAG, "error occured$e");
      }
    }

  }
}