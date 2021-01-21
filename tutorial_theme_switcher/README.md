# package_provider
* source [Building theme switcher using Provider and Shared Preferences](https://codesource.io/building-theme-switcher-using-provider-and-shared-preferences/)

## package in use: provider
* `provider: ^4.3.1`

## package in use: shared_preferences
* `shared_preferences: ^0.5.8`

## Notes
* tutorial for using provider with shared preferences

## Using providing with shared preferences
* add shared preferences variables in `theme_provider.dart`
  * final String key = "theme";
  * SharedPreferences _pref;
* create `_initPrefs()` to get SharedPreferences Instance if _pref is null
  * _initPrefs() async {}
    * if ( _pref == null ) { _pref = await SharedPreferences.getInstance(); }
* create `_loadFromPrefs()` to load target class variable _darkTheme from pref
  * _loadFromPrefs() async {}
    * await _initPrefs();
    * _darkTheme = _pref.getBool(key) ?? true;
    * notifyListeners();
* create `saveToPrefs()` to save target class variable _dartTheme to pref with `key`
  * _saveToPrefs() async {}
    * await _initPrefs();
    * _pref.setBool(key, _darkTheme);
* add `_loadFromPrefs()` to class constructor method
* add `_saveToPrefs()` to toggle method




