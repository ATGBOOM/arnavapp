import 'package:isar/isar.dart';
part 'key_value_store.g.dart';
@collection
class KeyValueStore{
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String localStorageKeys;
  String value;

  KeyValueStore({ required this.localStorageKeys, required this.value});
}





