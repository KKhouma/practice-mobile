import 'package:flutter/material.dart';
import 'package:ui1/login.dart';
import 'package:ui1/pages/main_menu.dart';
import 'login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      //home :  MainMenuPages(),
     home: LoginScreen(),
    );
  }
}

