import 'dart:developer' as developer;

class LoggerUtils{
  void log(String tag, String message){
    developer.log(message, name: tag);
  }
}