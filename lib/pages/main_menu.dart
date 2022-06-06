


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ui1/pages/medicine.dart';
import 'package:ui1/services/local_notifications.dart';
import 'freemed.dart';
import 'package:ui1/login.dart';



class MainMenuPages extends StatefulWidget {
  const MainMenuPages ({Key? key}) : super (key: key);

  

  @override
  State<MainMenuPages> createState() => _MainMenuPagesState();
}

class _MainMenuPagesState extends State<MainMenuPages> {
  String notificationMsg = "Waiting for notifications";
 
  @override
  void initState(){
    super.initState();

    LocalnNotificationService.intitialize();
    
    FirebaseMessaging.instance.getInitialMessage().then((event){
      if(event !=null){
        setState(() {
         notificationMsg = "${event.notification!.title} ${event.notification!.body}";
      });
      }
      
    });

    FirebaseMessaging.onMessage.listen((event) {
      LocalnNotificationService.showNotificationOnForeground(event);
      setState(() {
         notificationMsg = "${event.notification!.title} ${event.notification!.body}";
      });
     });

   FirebaseMessaging.onMessageOpenedApp.listen((event) {
     setState(() {
         notificationMsg = "${event.notification!.title} ${event.notification!.body}";
      }); 
   });  
  }  
  
  
  @override
  Widget build(BuildContext context) {
       return
      Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.logout),
          onPressed: () async{
          FirebaseAuth.instance.signOut().then((value){
            print("log out");
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          });
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        appBar: AppBar(
          
        ),
        backgroundColor:
         Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(notificationMsg),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailMedicinePage(titlePage: "Herbal")));
                  },
                  
                 child:Container(
                  width: double.infinity,
                  height: 100,
                 color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/herbal.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Obat-obatan Herbal',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                              
                                color: Colors.white
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => FreeMedicinePage(titlePage: "Obat-obatan Bebas")));
                  },

                  child: Container(
                     width: double.infinity,
                  height: 100,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/syrup.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Obat-obatan Bebas',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/pills.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Obat-obatan Terbatas',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green.shade700,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/heroin.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Obat-obatan Narkotika',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    
  }
}

