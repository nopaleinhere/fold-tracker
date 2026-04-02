import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive.dart';

class SecureHiveStorage {
  static const _secureKey = "secure_hive_key";

  final _secureStorage = const FlutterSecureStorage();

  Future<Uint8List> _getKey() async {
    var encodedKey = await _secureStorage.read(key: _secureKey);

    if (encodedKey == null) {
      final key = Hive.generateSecureKey();

      await _secureStorage.write(key: _secureKey, value: base64UrlEncode(key));

      return Uint8List.fromList(key);
    }

    return Uint8List.fromList(base64Url.decode(encodedKey));
  }

  Future<Box> openBox(String name) async {
    final key = await _getKey();

    return Hive.openBox(name, encryptionCipher: HiveAesCipher(key));
  }

  // Write
  Future<void> write(String box, String key, dynamic value) async {
    final hiveBox = await openBox(box);

    await hiveBox.put(key, value);
  }

  // Read
  Future<T?> read<T>(String box, String key) async {
    final hiveBox = await openBox(box);

    return hiveBox.get(key);
  }

  // Delete
  Future<void> delete(String box, String key) async {
    final hiveBox = await openBox(box);

    await hiveBox.delete(key);
  }
}
