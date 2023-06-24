import 'package:peecos/constans/datatype_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// helper class for shared preference
class SharedPrefUtil {
  /// save value to shared preference
  static void savePref(String key, dynamic value, DataTypeEnum dataType) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    switch (dataType) {
      case DataTypeEnum.string:
        pref.setString(key, value);
        break;
      case DataTypeEnum.stringList:
        pref.setStringList(key, value);
        break;
      case DataTypeEnum.bool:
        pref.setBool(key, value);
        break;
      case DataTypeEnum.int:
        pref.setInt(key, value);
        break;
      case DataTypeEnum.double:
        pref.setDouble(key, value);
        break;
    }
  }

  /// get value from shared preference
  static Future<dynamic> getPref(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }

  /// when user loggedin successfully, call this function
  static void setUserLoggedIn() {
    savePref('logged_key', true, DataTypeEnum.bool);
  }

  /// check user loggedin status
  /// TODO: check loggedin status from getPref
  static bool isUserLoggedin() {
    return false;
  }
}
