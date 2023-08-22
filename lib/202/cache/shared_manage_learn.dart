import 'package:kurs/202/cache/shared_not_initiazle.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }

class SharedManager {
  SharedPreferences? preferences;
  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) {
      throw SharedNotInitiazleException();
    }
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    preferences = await SharedPreferences.getInstance();
    await preferences?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name);
  }

  Future<bool> removeString(SharedKeys key) async {
    _checkPreferences();
    return (await preferences?.remove(key.name)) ?? false;
  }
}
