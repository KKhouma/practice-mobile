import 'package:flutter/material.dart';
import 'package:ui1/pages/medicine.dart';
import 'freemed.dart';

class MainMenuPages extends StatefulWidget {
  const MainMenuPages({ Key? key }) : super(key: key);

  @override
  State<MainMenuPages> createState() => _MainMenuPagesState();
}

class _MainMenuPagesState extends State<MainMenuPages> {

   Color colour = Colors.green;
  final int _counter = 0;
  bool theme = false;
  getCounter(){
    return _counter;
  }

  void _incrementCounter(){
    setState(() {
      theme = !theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return
      Scaffold(
        appBar: AppBar(
          title:  Text('Wiki Medicine',
          style: TextStyle(
            color: theme == true? Colors.white : Colors.black),),
        ),
        backgroundColor:
        theme == false? Colors.blue.shade600 : Colors.white,
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
                    setState(() {
                      colour = Colors.lightGreen;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailMedicinePage(titlePage: "Herbal",theme: theme)));
                  },
                  
                 child:Container(
                  width: double.infinity,
                  height: 100,
                  color: colour,
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
                              
                                color: theme == true? Colors.white : Colors.black,
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
                    setState(() {
                      colour = Colors.lightGreen;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_) => FreeMedicinePage(titlePage: "Obat-obatan Bebas",theme: theme)));
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
                                color: theme == true? Colors.white : Colors.black,
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
                                color: theme == true? Colors.white : Colors.black,
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
                                color: theme == true? Colors.white : Colors.black,
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme == true? Colors.blue : Colors.white,
          onPressed: _incrementCounter,
          child: Icon(
            theme == false? Icons.sunny : Icons.dark_mode_outlined,
            color : Colors.black,
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      );
    
  }
}