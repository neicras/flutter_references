# ui_login
* source http://tw-hkt.blogspot.com/2019/08/flutter-sharedpreferences.html

## package in use: SharedPreferences
* pubspec.yaml `shared_preferences: "^0.5.3"`
* load package `import 'package:shared_preferences/shared_preferences.dart';`
* call prefs object `SharedPreferences prefs = await SharedPreferences.getInstance();`
* write in operations
```
//字串資料
await prefs.setString(key, value);

//布林資料
await prefs.setBool(key, value);

//浮點數資料
await prefs.setDouble(key, value);

//整數資料
await prefs.setInt(key, value);

//字串列表資料
await prefs.setStringList(key, value);
```
* read operations
```
//字串資料
prefs. getString(key);

//布林資料
prefs.getBool(key);

//浮點數資料
prefs.getDouble(key);

//整數資料
prefs.getInt(key);

//字串列表資料
prefs.getStringList(key);
```
* delete specified key value `prefs.remove(key);`
* delete all key values `prefs.clear();`
