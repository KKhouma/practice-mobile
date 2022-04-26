import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui1/login.dart';
import 'package:ui1/pages/main_menu.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences storeLocal = await SharedPreferences.getInstance();
  var _isLogin = storeLocal.getBool("isLogin");
  var _nama = storeLocal.getString("nama");
  runApp(MaterialApp(
    home: _isLogin == false || _isLogin == null || _nama == null
        ? LoginScreen()
        : MainMenuPages(
            nama: _nama.toString(),
          ),
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

