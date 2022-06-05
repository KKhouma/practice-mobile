import 'package:flutter/material.dart';
import 'package:ui1/login.dart';
import 'package:ui1/pages/main_menu.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
  
  runApp(MaterialApp(
   home: LoginScreen()
  ));
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
     home: LoginScreen(),
    );
  }
}

