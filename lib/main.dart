import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ui1/login.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> backgroundHandler(RemoteMessage message) async{
  print("this is message from background");
  print(message.notification!.title);
  print(message.notification!.body);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  
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

