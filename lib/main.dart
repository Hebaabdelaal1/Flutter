import 'package:flutter/material.dart';
import 'package:flutter_application_2/Intro.dart';
import 'package:flutter_application_2/Intro2.dart';
import 'package:flutter_application_2/Intro3.dart';
import 'package:flutter_application_2/Intro4.dart';
import 'package:flutter_application_2/Login.dart';
import 'package:flutter_application_2/Register.dart';
import 'package:flutter_application_2/Tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Screen1(),
      // home: Screen2(),
      // home: Screen3(),
      // home: Screen4(),
      // home: Login(),
      // home: Register(),
      // home: Tasks(),
    );
  }
}
