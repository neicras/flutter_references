# package_provider
* source [Flutter Provider的使用](http://tw-hkt.blogspot.com/2019/08/flutter-sharedpreferences.html) - does not use provider.of
* source [【Flutter 程式設計入門實戰 30 天】Day 29：Provider 狀態管理](http://tw-hkt.blogspot.com/2019/11/flutter-30-day-29provider.html) - using provider.of

## package in use: provider
* `provider: ^3.1.0` at pubspec.yaml
* `import 'package:provider/provider.dart';`
* concepts of provider
  * `ChangeNotifier` (as a [maxin](https://stackoverflow.com/questions/21682714/with-keyword-in-dart), used to notify listeners by `notifyListeners()`)
  * `ChangeNotifierProvider` (See tutorial_theme_switcher)
  * or `MultiProvider` 
  * `Consumer`
  * `Provider.of` (optional)
* Provider.of (see [Flutter Tutorial: Provider Overview for Humans](https://blog.codemagic.io/flutter-tutorial-provider/))
  * `final ObjectProvider = Provider.of<ChangeNotifierModel>(context);`
  * Text(ObjectProvider.StringThatChanges)

## widgets in use
* MultiProvider
  * `providers: [ChangeNotifierProvider(create: (_) => COunter()),]`
  * child (`MaterialApp()`)
* AppBar
  * title (`Text("nextPage")`)
  * actions (widget lists: <Widget>[...])
* Scaffold
  * appBar
  * body
  * floatingActionButton
* Text
  * "String"
  * style (TextStyle widget)
* TextStyle
  * frontSize
  * color (`Colors.red`)