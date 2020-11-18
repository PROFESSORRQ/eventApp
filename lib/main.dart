import 'package:flutter/material.dart';
import './UI/login.dart';
void main(){
  runApp(new MaterialApp(
    title: "Event App",
    theme: ThemeData(
      primarySwatch: Colors.white,
      accentColor: Colors.red,
      cursorColor: Colors.red,
      textTheme: TextTheme(
        headline3: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 45.0,
          color: Colors.red,
        ),
        button: TextStyle(
          fontFamily: 'Poppins',
        ),

      ),
    ),
    home: login(),

  ));
}



