import 'package:flutter/material.dart';
import './UI/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    title: "Event App",
    // theme: ThemeData(
    //   primarySwatch: Colors.white,
    //   accentColor: Colors.red,
    //   cursorColor: Colors.red,
    //   textTheme: TextTheme(
    //     headline3: TextStyle(
    //       fontFamily: 'Poppins',
    //       fontSize: 45.0,
    //       color: Colors.red,
    //     ),
    //     button: TextStyle(
    //       fontFamily: 'Poppins',
    //     ),

    //   ),
    // ),
    home: Login(),

  ));
}



