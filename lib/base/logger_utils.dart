import 'dart:developer' as developer;

import 'package:injectable/injectable.dart';
@injectable
class LoggerUtils{
  void log(String tag, String message){
    developer.log(message, name: tag);
  }
}