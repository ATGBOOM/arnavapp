import 'package:arnavapp/dbhelper/i_local_storage_manager.dart';
import 'package:arnavapp/dbhelper/key_value_store.dart';
import 'package:arnavapp/dbhelper/local_storage_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
@Singleton(as: ILocalStorageManager)
class IsarLocalStorageManager extends ILocalStorageManager{
  late Isar _isar;

  IsarLocalStorageManager(){
    openDatabase();
  }

  Future<void> openDatabase() async{
    final  directory = await getApplicationDocumentsDirectory();
    Isar.open([KeyValueStoreSchema], directory: directory.path).then((value) {
      _isar = value;
    });
  }

  @override
  Future<void> addBoolToLocalKeyValueStorage(LocalStorageKeys key, bool value) async{
    String stringValue = (value) ? '1' : '0';
    var keyStore = await getStoredKeyValueStore(key);
    if(keyStore==null){
      keyStore = KeyValueStore(localStorageKeys: key.name, value: stringValue);
    } else {
      keyStore.localStorageKeys = key.name;
      keyStore.value = stringValue;
    }
    await _isar.writeTxn((){
      return _isar.keyValueStores.put(KeyValueStore(localStorageKeys: key.name, value: stringValue));
    });
  }

  @override
  Future<void> addDoubleToKeyValueStorage(LocalStorageKeys key, double value) async{
    String stringValue = value.toString();
    var keyStore = await getStoredKeyValueStore(key);
    if(keyStore==null){
      keyStore = KeyValueStore(localStorageKeys: key.name, value: stringValue);
    } else {
      keyStore.localStorageKeys = key.name;
      keyStore.value = stringValue;
    }
    await _isar.writeTxn((){
      return _isar.keyValueStores.put(KeyValueStore(localStorageKeys: key.name, value: stringValue));
    });
  }

  @override
  Future<void> addIntToKeyValueStorage(LocalStorageKeys key, int value) async{
    String stringValue = value.toString();
    var keyStore = await getStoredKeyValueStore(key);
    if(keyStore==null){
      keyStore = KeyValueStore(localStorageKeys: key.name, value: stringValue);
    } else {
      keyStore.localStorageKeys = key.name;
      keyStore.value = stringValue;
    }
    await _isar.writeTxn((){
      return _isar.keyValueStores.put(KeyValueStore(localStorageKeys: key.name, value: stringValue));
    });
  }

  @override
  Future<void> addStringToKeyValueStorage(LocalStorageKeys key, String value) async{
    var keyStore = await getStoredKeyValueStore(key);
    if(keyStore==null){
      keyStore = KeyValueStore(localStorageKeys: key.name, value: value);
    } else {
      keyStore.localStorageKeys = key.name;
      keyStore.value = value;
    }
    await _isar.writeTxn((){
      return _isar.keyValueStores.put(keyStore!);
    });

  }

  @override
  Future<bool> getBoolFromKeyValueStorage(LocalStorageKeys key) async{
    final keyStore = await getStoredKeyValueStore(key);
    return (keyStore?.value.toString() == '1');
  }

  @override
  Future<double> getDoubleFromKeyValueStorage(LocalStorageKeys key) async{
    final keyStore = await getStoredKeyValueStore(key);
    return double.tryParse(keyStore?.value ?? '') ?? 0.0;
  }

  @override
  Future<int> getIntFromKeyValueStorage(LocalStorageKeys key) async{
    final keyStore = await getStoredKeyValueStore(key);
    return int.tryParse(keyStore?.value ?? '') ?? 0;
  }

  @override
  Future<String> getStringFromKeyValueStorage(LocalStorageKeys key) async{
    final keyStore = await getStoredKeyValueStore(key);
    return keyStore?.value ?? '';
  }

  @override
  Future<void> clearLocalKeyValueStorage() async{
    await _isar.writeTxn((){
      return _isar.keyValueStores.clear();
    });
  }

  Future<KeyValueStore?> getStoredKeyValueStore(LocalStorageKeys key) async{
    return await _isar.keyValueStores.where().localStorageKeysEqualTo(key.name).findFirst();
  }


  
}