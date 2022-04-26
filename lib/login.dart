
import 'package:ui1/pages/main_menu.dart';

import 'decor.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
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
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                         Text(
                       'Username',
                       style: kLabelStyle,
                     ),
                     const SizedBox(height: 10.0),
                     Container(
                       alignment: Alignment.centerLeft,
                       decoration:kBoxDecorationStyle,
                       height: 60.0,
                       child: TextField(
                         style: TextStyle(color: Colors.white),
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.only(top: 14.0),
                           prefixIcon: Icon(
                             Icons.verified_user,
                             color: Colors.white,
                           ),
                           hintText: 'Enter Username',
                           hintStyle: kHintTextStyle,
                         ),
                       ),
                     )
                   ],
                 ),
                 SizedBox(height: 30.0),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                         Text(
                       'Password',
                       style: kLabelStyle,
                     ),
                     const SizedBox(height: 10.0),
                     Container(
                       alignment: Alignment.centerLeft,
                       decoration:kBoxDecorationStyle,
                       height: 60.0,
                       child: TextField(
                         obscureText: true,
                         style: TextStyle(color: Colors.white),
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.only(top: 14.0),
                           prefixIcon: Icon(
                             Icons.lock,
                             color: Colors.white,
                           ),
                           hintText: 'Enter Password',
                           hintStyle: kHintTextStyle,
                         ),
                       ),
                     )
                   ],
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 25.0),
                   width: double.infinity,
                   child: RaisedButton(
                     elevation: 5.0,
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenuPages()));
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