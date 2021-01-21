
## reference
* http://tw-hkt.blogspot.com/2019/08/2019-dart-83.html

## general
### dart programme must be within a main method
```
main(){
    var number = 42;
    print(number);
}
```

## string
### type casting from string to int
```
var intVal = int.parse('100');
```
### type casting from string to double
```
var doubleVal = double.parse('99.9');
```
### type casting from int to string
```
String strVal = 66.toString();
```
### type casting from double to string (2 decimals)
```
String strVal = 3.1415.toStringAsFixed(2);
```

## method
### 5 types of methods
* method without parameters
```
void sample(){
    print('sample');
}
```
* method with return data
```
String sample(){
    return 'sample';
}

void main(){
    var x = sample();
    print(x);
}
```
* method with parameters
```
void sample(String x){
    print(x);
}

void main(){
    sample('Sample');
}
```
* method with one optional parameter
```
void sample([x]){
    print(x);
}

void main(){
    sample('Sample');
    sample();
}
```
* method with many optional named parameters
```
void setData({int x, int y}){
    print('x: $x , y: $y');
}

void main(){
  setData(x:100,y:66);
  setData(y:66,x:100);
  setData(y:66);
}
```

## class
```
class 類別名稱 {
   <類別欄位>
   <存取、設定子>
   <構造方法>
   <方法>
}
```
### create an object of a class
`類別名稱 物件名稱 = new 類別建構子();`
### see exampleClass.dart
* run `dart exampleClass.dart`

## class inheritance
* https://tw-hkt.blogspot.com/2019/08/dart_43.html

## getter and setter
* example code
```
main() {
    Car car = new Car();
    print(car.doors);  // 4
    car.doors = 6; // Won't work since no doors setter is defined
}

class Car {
    int _doors = 4;
    int get doors => _doors;
}
```
* use of getter and setter [stackoverflow](https://stackoverflow.com/questions/27683924/how-do-getters-and-setters-change-properties-in-dart)
  * allow us to have an appearance of a class property, which indeed is from calculation of other properties, particularly with private variables (_variables)
  * getters and setters allow executing arbitary codes
  * ommiting a setter makes a property immutable

## constructor methods/ named constructor methods in dart
* source [Consturctors in Dart, Medium](https://medium.com/jay-tillu/constructors-in-dart-4f972186c372)
* 4 distinction of constructor methods vs normal methods
  * same name as the class
  * does not have a return type (or a return statement)
  * automatically called when the object is created
  * a default no-argumnet constructor will be called if we do not specify a constructor
```
class Student{
  Student(int enNum){
    print(enNum);
  }
}

main(){
  var myStudent = new Student(15);
}

Output
15
```
* named consturctors
  * named constructors are used when you want to have multiple constructors in a dart class, thus you can call `class_name()`, `class_name().constructor_A`, `class_name().constructor_B`
  * sometimes used to have different constructor for instance having different init data
```
class Employee {
  int empID;
  String empName;
  String empDept;

  Employee.ID(this.empID); // Named Constructor Creation

  Employee.name(this.empName);

  Employee.department(this.empDept);
}

main() {
  var myEmployee01 = new Employee.ID(15);
  var myEmployee02 = new Employee.department("Testing");
  var myEmployee03 = new Employee.name("Ashu");

  print(myEmployee01.empID);
  print(myEmployee02.empDept);
  print(myEmployee03.empName);
}

Output
15
Testing
Ashu
```