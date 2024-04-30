import 'package:flutter/material.dart';
//const age = 20; const example
// var name = "foo"; var example
// final name = "arthur"; final make that there are not more changes
String getFullName(String firstName, String lastName){
// return firstName + " " + lastName;//first way
return "$firstName $lastName";//second way

}//the function return a string
// todo 1,
// String getFullName(String firstName, String lastName) => return "$firstName $lastName";//second form of function for short instructions
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(getFullName("foo","Bar"));//1)prove that print in console "foo bar"
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
