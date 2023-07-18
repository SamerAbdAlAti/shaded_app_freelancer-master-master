import 'package:shared_preferences/shared_preferences.dart';

import '../../features/authentication/models/driver_models/driver_model.dart';
import '../../features/authentication/models/user_models/user_model.dart';
import '../../features/captain/signup/data/models/captian_model.dart';

enum UserPrKeys {
  languageCode,
  loggedIn,
  password,
  id,
  token,
  name,
  deviceType,
  fcmToken,
  status,
  lat,
  long,
  location,
  phone,
  userType,
}

enum DriverPrKeys {
  languageCode,
  loggedIn,
  password,
  id,
  token,
  name,
  deviceType,
  fcmToken,
  status,
  lat,
  long,
  location,
  phone,
  driver,
  userType,
}

class SharedPrefController {
  SharedPrefController._();

  static SharedPrefController? _instance;

  late SharedPreferences? _sharedPreferences;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  T? getValueFor<T>(String key) {
    if (_sharedPreferences!.containsKey(key)) {
      return _sharedPreferences!.get(key) as T;
    }
    return null;
  }

  Future<bool> setString({
    required String key,
    required String value,
  }) async {
    return await _sharedPreferences!.setString(key, value);
  }

  Future<void> saveUser(
      {required UserDataModel user, }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(UserPrKeys.loggedIn.name, true);
    await prefs.setInt(UserPrKeys.id.name, user.id);
    await prefs.setString(UserPrKeys.name.name, user.name ?? "");
    await prefs.setString(UserPrKeys.deviceType.name, user.devicetype ?? "");
    await prefs.setString(UserPrKeys.fcmToken.name, user.fcmtoken ?? "");
    await prefs.setString(UserPrKeys.status.name, user.status.name);
    await prefs.setString(UserPrKeys.lat.name, user.lat ?? '');
    await prefs.setString(UserPrKeys.long.name, user.long ?? '');
    await prefs.setString(UserPrKeys.token.name, "Bearer ${user.token}");
    // await prefs.setString(UserPrKeys.password.name, password);
  }

  Future<void> saveDriver(
      {required CaptainDataModel user}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(DriverPrKeys.loggedIn.name, true);
    await prefs.setInt(DriverPrKeys.id.name, user.id);
    await prefs.setString(DriverPrKeys.name.name, user.name ?? "");
    await prefs.setString(DriverPrKeys.deviceType.name, user.devicetype ?? "");
    await prefs.setString(DriverPrKeys.fcmToken.name, user.fcmtoken ?? "");
    await prefs.setString(DriverPrKeys.status.name, user.status.name);
    await prefs.setString(DriverPrKeys.lat.name, user.lat ?? '');
    await prefs.setString(DriverPrKeys.long.name, user.long ?? '');
    await prefs.setString(DriverPrKeys.token.name, "Bearer ${user.token}");
  }

  void clear() async {
    _sharedPreferences!.clear();
  }
}
