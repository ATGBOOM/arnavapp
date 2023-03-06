
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule{
  @singleton
  AppRouter get appRouter => AppRouter();
}