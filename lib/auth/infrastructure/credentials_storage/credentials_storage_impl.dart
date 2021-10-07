import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:oauth2/src/credentials.dart';
import 'package:reop_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';

class CredentialsStorageImpl implements CredentialsStorage {
  final FlutterSecureStorage _storage;

  CredentialsStorageImpl(this._storage);

  static const _key = 'oatuh2_credentials';

  Credentials? _cachedCredentials;

  @override
  Future<Credentials?> read() async {
    if (_cachedCredentials != null) {
      return _cachedCredentials;
    }
    final credentialsJson = await _storage.read(key: _key);
    if (credentialsJson == null) {
      return null;
    }
    try {
      return _cachedCredentials = Credentials.fromJson(credentialsJson);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(Credentials credentials) async {
    _cachedCredentials = credentials;
    await _storage.write(key: _key, value: credentials.toJson());
  }

  @override
  Future<void> clear() async {
    _cachedCredentials = null;
    await _storage.delete(key: _key);
  }
}
