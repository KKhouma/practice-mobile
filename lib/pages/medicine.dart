import 'package:flutter/material.dart';
import 'package:ui1/pages/main_menu.dart';

class DetailMedicinePage extends StatelessWidget {
  DetailMedicinePage({ Key? key,required this.titlePage , Key }) : super(key: key);
  String titlePage;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(titlePage,
        style: TextStyle(
          color:Colors.white
        ),),
        centerTitle:true ,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                color: Colors.yellow[100],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/jahe.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Jahe'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
               Container(
                color: Colors.yellow[200],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/thyme.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Thyme'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
              Container(
                color: Colors.yellow[300],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/kumiskucing.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Kumis Kucing'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
               Container(
                color: Colors.yellow[400],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/rosemary.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Rosemary'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
              Container(
                color: Colors.yellow[500],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/pegagan.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Daun Pegagan'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
                            Container(
                color: Colors.yellow[600],
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/mint.png',
                    width: 150,
                    height: 200,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    const Text('Mint'),
                    const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward))  ,
                    SizedBox(
                      height: 5,
                    )
                  ],)
                ]),
              ),
            ],
          ),
        ),
        
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
      ),
    );
  }

  
}


