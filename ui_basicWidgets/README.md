# ui_basicWidgets
* [Flutter Layout Basics (4:01)](https://www.youtube.com/watch?v=uisLoOmtISk)
* [Flutter Layout Design Tutorial || Top 5 Widgets (21:04)](https://www.youtube.com/watch?v=-z26yE9g0Hg)

## Flutter Layout Basics (4:01), widgets in use
* Container
  * color: Colors.lightBlue,
  * width: 300,
  * height: 200,
  * child: Center(child:Text()),
* Expanded (wraping Containers)
  * flex: 1 (to split main axis into parts)
  * child(Container())
* Align
  * alignment: Alignment.centerLeft,
* SingleChildScrollView
  * child
* SizedBox (create fixed space)
* Spacer (no params, span across space)
* Column
  * mainAxisAlignment: MainAxisAlignment.spaceAround,
  * children: <Widget>[Container(),],
* Row
* Center
  * child: Container()

## Flutter Layout Design Tutorial || Top 5 Widgets (21:04), widgets in use
* Column()
  * mainAxisAlignment: MainAxisAlignment.end,
  * crossAxisAlignment: CrossAxisAlignment.center,
  * mainAxisSize: MainAxisSize.min,
  * children <Widget>[],
    * FlutterLogo(size: 48),
    * SizedBox(),
    * Column(),
* Row()
  * crossAxisAlignment: CrossAxisAlignment.stretch, (to sctrech full width of cross-axis)
  * children <Widget>[],
    * FlutterLogo(size: 48),
    * SizedBox()
    * Expanded()
    * Icon()
* Stack()
  * children: <Widget>[]
    * Opacity()
    * Positioned.fill()
      * child: ()
        * Icon(Icons.block, size: 72)
    * Positioned()
      * child: ()
        * left: 8,
        * top: 8,
        * bottom: 8, (optional)
        * right: 8, (optional)
        * Icon(Icons.star, color: Colors.amber, size: 72)
* Container()
  * margin: Edgeinsets.all(16) ([vs padding](https://www.google.com/search?q=flutter+container+margin+padding&oq=flutter+container++margin+padding&aqs=chrome..69i57.6048j1j7&sourceid=chrome&ie=UTF-8))
  * padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36),
  * decoration: BoxDecoration()
    * borderRadius: BorderRadius.circular(12),
    * gradient: LinearGradient()
      * begin: Alignment.topCenter,
      * end: Alignment.bottomCenter,
      * stops:
      * colors: [Color(0xFF21386C), Color(0xFF0059A5)]
    * boxShadow: [],
      * BoxShadow(),
        * color: Colors.pink,
        * blurRadius: 12,
        * offset: Offset(3, 3)
* ListView.builder()
  * itenCount: 5,
  * itemBuilder: (context, index) {},
    * return Container()
      * contact.x

* Card()
  * margin: EdgeInsets.all(16),
  * elevation: 12,
  * shape: RoundedRectangleBorder()
    * boarderRadius: BorderRadius.circular(24),
  * color: Colors.white,
  * child: Padding()
* Padding()
  * padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36),
  * child: Row()
