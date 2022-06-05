import 'package:firebase_auth/firebase_auth.dart';
import 'package:ui1/pages/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:ui1/pages/SignUp.dart';
import 'package:ui1/pages/textfield.dart';

class LoginScreen extends StatefulWidget{
  
   LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
  
  
}



class _LoginScreenState extends State<LoginScreen>{
  
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61a4f1),
                  Color(0xff478de0),
                  Color(0xff398ae5),
          ],begin: Alignment.topCenter, end: Alignment.bottomCenter
          )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30,),
                  reusableTextField("Username", Icons.person_outline, false, _emailTextController),
                  const SizedBox(height: 30,),
                  reusableTextField("Password", Icons.lock_outline, true, _passwordTextController)  ,
                  const SizedBox(height: 30,),
                  firebaseUIButton(context, "Sign In",(){
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text)
                    .then((value) {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainMenuPages()));
                    }).onError((error, stackTrace){
                      print("Error ${error.toString()}");
                    });
                  }),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("dont have account?",
                      style: TextStyle(color: Colors.white70)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                        child: const Text("Sign up",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      )
                    ],
                  )
                ]),
              )),  
      ),
    );
  }
  
  
}

