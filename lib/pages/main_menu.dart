import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui1/pages/medicine.dart';
import 'freemed.dart';
import 'package:ui1/login.dart';



class MainMenuPages extends StatelessWidget {
  final String nama;

  MainMenuPages({required this.nama});

  @override
  Widget build(BuildContext context) {
       return
      Scaffold(
        floatingActionButton: FloatingActionButton(
          heroTag: Icons.logout,
          onPressed: () async{
          SharedPreferences storeLocal = await SharedPreferences.getInstance();
          storeLocal.clear();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return LoginScreen();
          }),
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        appBar: AppBar(
          title: Text('Halo !!! '+nama),
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
                )
              ],
            ),
          ),
        ),
      );
    
  }
  
     

 
}

