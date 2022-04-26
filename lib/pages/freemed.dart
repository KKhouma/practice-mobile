import 'package:flutter/material.dart';
import 'package:ui1/pages/main_menu.dart';

class FreeMedicinePage extends StatelessWidget {
  FreeMedicinePage({ Key? key,required this.titlePage , Key }) : super(key: key);
  String titlePage;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(titlePage,
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle:true ,
      ),
      backgroundColor: Colors.blue.shade600,
      body: _PageList(),
    );
  }

  
}

class _PageList extends StatefulWidget{
  @override
  _PageListState createState() => _PageListState();
  
}

class _PageListState extends State<_PageList>{
  List<String> Obat = [
    "Cap Lang",
    "Counterpain",
    "Mediflex",
    "Mextril",
    "Mixagrip",
    "Mylanta",
    "Neo Entrostop",
    "Promag",
    "Starmuno",
    "Vicks",
    "Woods",
  ];

  @override
  Widget build(BuildContext context) {
  return Container(
    child: ListView.builder(
      itemCount: Obat.length,
      itemBuilder: (BuildContext context, int index){
        final Number = index+1;
        final obats = Obat[index].toString();
        return Card(
          child: ListTile(
            tileColor: Colors.green[300],
            leading: Text(Number.toString()),
            title: Text(obats),
          ),
        );
      },),
  );
  }

  
}



