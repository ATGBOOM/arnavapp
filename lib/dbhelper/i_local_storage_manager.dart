import 'package:arnavapp/dbhelper/local_storage_keys.dart';

abstract class ILocalStorageManager{
  Future<void> addBoolToLocalKeyValueStorage(LocalStorageKeys key, bool value);
  Future<void> addIntToKeyValueStorage(LocalStorageKeys key, int value);
  Future<void> addStringToKeyValueStorage(LocalStorageKeys key, String value);
  Future<void> addDoubleToKeyValueStorage(LocalStorageKeys key, double value);
  Future<bool> getBoolFromKeyValueStorage(LocalStorageKeys key);
  Future<int> getIntFromKeyValueStorage(LocalStorageKeys key);
  Future<String> getStringFromKeyValueStorage(LocalStorageKeys key);
  Future<double> getDoubleFromKeyValueStorage(LocalStorageKeys key);

}