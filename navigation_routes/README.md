# ui_login
* source https://medium.com/faun/flutter-navigation-using-push-pop-and-routes-d49988098efe

## widgets in use
* Navigator.push
  * context
  * MaterialPageRoute widget
* Navigator.pop
  * context
* MaterialPageRoute widget
  * builder (`(context) => SecondScreen()`)
* MaterialApp
  * initialRoute (`/firstScreen`)
  * routes (dic of (route, context), e.g. `{'/secondScreen', (context) => SecondScreen(),}`)
  * home
* Navigator.pushNamed
  * context
  * route (as defined in Material App, e.g. `'/secondScreen'`)
