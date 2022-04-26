import 'package:ui1/pages/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:ui1/login/dummy_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen>{

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  String _nama = "";
  bool _isLogin = false;

  loginFunc() async {
    if (usersCheck()) {
      storeToLocal(_username.text, _password.text, _isLogin);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return MainMenuPages(
            nama: _nama,
          );
        }),
      );
    } else {
      print("Gagal Login");
    }
  }

  storeToLocal(String user, String pass, bool status) async {
     final storeLocal = await SharedPreferences.getInstance();
    await storeLocal.setString("username", user);
    await storeLocal.setString("password", pass);
    await storeLocal.setBool("isLogin", true);
    await storeLocal.setString("nama", _nama);
  }

  bool usersCheck() {
    for (Map<String, dynamic> item in DummyData.data) {
      if (item["username"] == _username.text.toString() &&
          item['password'] == _password.text.toString()) {
        _isLogin = true;
        _nama = item['nama'];
        return true;
      }
    }
    return false;
  }

  
  bool _isObscure = true;
  bool _isVisible = false;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61a4f1),
                  Color(0xff478de0),
                  Color(0xff398ae5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9]
                )
            ),
          ),
         Container(
           height: double.infinity,
           child:  SingleChildScrollView(
             physics:const AlwaysScrollableScrollPhysics(),
             padding:const EdgeInsets.symmetric(
               horizontal: 40.0,
               vertical: 120.0,
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget>[
                const Text(
                   'Sign In',
                   style: TextStyle(
                     color :Colors.white,
                     fontFamily: 'OpenSans',
                     fontSize:30.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 SizedBox(height: 30.0),
                 Visibility(
                   visible: _isVisible,
                   maintainSize: true,
                   maintainAnimation: true,
                   maintainState: true,
                   child: Container(
                     alignment: Alignment.centerLeft,
                     padding: EdgeInsets.all(10),
                     child:const Text(
                       "ID dan Password salah",
                       style: TextStyle(
                         color: Colors.red,
                         fontSize: 12,
                       ),
                     ),
                     ),
                 ),
                 SizedBox(height: 30),
            // Textfields for username and password fields
            Container(
              height: 140,
              width: 530,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    onTap: () {
                      setState(() {
                        _isVisible = false;
                      });
                    },
                    controller: _username,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        contentPadding: EdgeInsets.all(20)),
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  TextFormField(
                    onTap: () {
                      setState(() {
                        _isVisible = false;
                      });
                    },
                    controller: _password,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        contentPadding: EdgeInsets.all(20),
                        // Adding the visibility icon to toggle visibility of the password field
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        )),
                    obscureText: _isObscure,
                  ),
                ],
              ),
            ),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 25.0),
                   width: double.infinity,
                   child: RaisedButton(
                     elevation: 5.0,
                     onPressed: (){
                      loginFunc();
                     },
                     padding: EdgeInsets.all(15.0),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                     color: Colors.white,
                     child:const Text(
                       'LOGIN',
                       style: TextStyle(
                         color: Color(0xFF527DAA),
                         letterSpacing: 1.5,
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'OpenSans',
                       ),
                     ),
                   ),
                 )
               ]),
           ),
         ) 
        ], ),
    );
  }
}