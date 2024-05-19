import 'package:flutter/material.dart';
//const age = 20; const example
// var name = "foo"; var example
// final name = "arthur"; final make that there are not more changes
String getFullName(String firstName, String lastName){
// return firstName + " " + lastName;//first way
return "$firstName $lastName";//second way

}//the function return a string
String printMyName(){
  return "";
}
// todo
// String getFullName(String firstName, String lastName) => return "$firstName $lastName";//second form of function for short instructions

void test(){
  //if conditional
  const name = "bar";
  if(name == "foo"){
    print("Yes,it's foo");
  }else if(name == "bar"){
    print("Yes,it's bar");
  }else{
    print("No,it's not foo or bar");
  }
  //simple operators + - * and /
  var age = 20;
  final halfOfAge = age/2;
  final doubleAge = age *2;
  final ageMinusOne = --age;//prefix operator -- make sure that age is subtract one first
  final nameTimes5 = name * 5;
  print('$halfOfAge  $doubleAge $nameTimes5');
  //list
  var names = ["Foo","Bar","Baz"];
  final foo = name[0];
  final length = name.length;
  print('$foo  $length');
  names.add("My name");
  print(name.length);
  //sets
  var names2= {"foo","bar","baz","foo"};
  names2.add("foo");
  names2.add("bar");
  names2.add("baz");
  const things = {"foo",1};
  print(things);
  print(names2);
  //maps
  var person = {
    "age":20,
    "name":"foo",
    };
  print(person);
  person["name"] = "Foooo";
  print(person);
  person["lastname"] = "baz";
  print(person);

  //null
  String? name3 = null;// the "?" make it possible to have null
  print(name3);
  name3 = "foo";
  print(name3);
  List<String?>? names4 = ["foo","bar"];// make posible that the variables are null and that the list is absent
  //cherry picking non-null values
  const String? firstName2 = null;
  const String? lastName2 = "bar";
  const String? middleName = "baz";
  if(firstName2 != null){
    print("First name is the first non-null value");
  } else if(middleName != null ){
    print("Middle name is the first non-null value");
  } else if(lastName2 != null){
    print("Last name is the first non-null value");
  }

  const firstNonNullValue = firstName2 ?? middleName ?? lastName2;
  //null awaere assignment operator "??="
  String? nameT = firstName2;
  nameT??= middleName;//if  nameT is nulll it take middle name value
  nameT??= lastName2;
  print(nameT);

// conditional invocation
List<String>? namesCI = null;
final lengthCI = namesCI ?.length ?? 0; // if namesCI is null, length is 0

if(namesCI != null){final numberOfNames = names.length;}
}

void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    test();
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
