import 'package:cat_facts/services/storage/istorage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Storage implements IStorage {
  String get _key => '/storage_box';
  late LazyBox box;

  Storage._();
  static final Storage _storage = Storage._()..init();

  static Storage instance() => _storage;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openLazyBox(_key);
  }

  @override
  Future<T?> take<T>(String key) async {
    final _nBox = await Hive.openLazyBox<T>(key);
    final response = await _nBox.get(key);

    await _nBox.close();
    return response;
  }

  @override
  Future<void> save<T>(String key, T value) async {
    final _nBox = await Hive.openLazyBox<T>(key);
    await _nBox.put(key, value);
    await _nBox.close();
  }

  @override
  Future<void> delete<T>(String key) async {
    final _nBox = await Hive.openLazyBox<T>(key);
    await _nBox.delete(key);
    await _nBox.close();
  }
}
