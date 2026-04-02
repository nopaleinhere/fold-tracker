import 'package:hive_ce/hive.dart';

class HiveStorage {
  Box _box(String name) => Hive.box(name);

  // Write
  Future<void> write(String box, String key, dynamic value) async {
    await _box(box).put(key, value);
  }

  // Read
  T? read<T>(String box, String key) {
    return _box(box).get(key);
  }

  // Delete
  Future<void> delete(String box, String key) async {
    await _box(box).delete(key);
  }

  // Clear
  Future<void> clear(String box) async {
    await _box(box).clear();
  }
}
