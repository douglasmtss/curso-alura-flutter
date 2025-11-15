import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sqlite_offline/data/storage/local_storage.dart';

class LocalSecureStorage implements LocalStorage {
  final secureStorageInstante = const FlutterSecureStorage();

  @override
  Future<bool> create<T>({required String key, required T data}) async {
    try {
      await secureStorageInstante.write(key: key, value: data.toString());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> delete({required String key}) async {
    try {
      await secureStorageInstante.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<T?> getData<T>({required String key}) async {
    final result = await secureStorageInstante.read(key: key);
    return result as T?;
  }
}
