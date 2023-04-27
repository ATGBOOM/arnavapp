
import 'package:arnavapp/appFirebase/authentication.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  final _logger = locator<LoggerUtils>();
  final _TAG = "SecondPage";
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
  void _initConfig() async{
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
            fetchTimeout: Duration(seconds: 1), 
            minimumFetchInterval: Duration(seconds: 10)
        )
      );
      await _remoteConfig.activate();
      await _remoteConfig.fetchAndActivate();
      var temp = _remoteConfig.getString("clothes");
      _logger.log(_TAG, "value from remoteconfig $temp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("hello second page")
            ],
          ),
          ElevatedButton(
              onPressed: (){
              _initConfig();
              },
              child: Text("fetch")
          ),
          ElevatedButton(
              onPressed: () async{
                Authentication firebaseAuthentication = Authentication();
                await firebaseAuthentication.initialiseFirebase();
                await firebaseAuthentication.startGoogleSignIn();
              },
              child: Text("get images")
          ),
        ],
      ),
    );
  }

}