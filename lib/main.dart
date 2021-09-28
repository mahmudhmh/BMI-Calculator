import 'package:messengerapp/BMI.dart';
import 'package:messengerapp/BMICalculations.dart';
import 'package:messengerapp/CounterScreen.dart';
import 'package:messengerapp/UsersScreen.dart';
import 'package:messengerapp/messengerpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateless
// Stateful

// class Myapp
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalc(),
    );
  }

}