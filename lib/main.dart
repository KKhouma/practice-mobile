import 'package:flutter/material.dart';
import 'package:ui1/pages/main_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home :  MainMenuPages(),
      // home:
      //  Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.grey,
      //     title: const Text('Wiki Medicine'),
      //   ),
      //   body: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       children: [
      //         InkWell(
      //           onTap: (){
                  
      //           },
      //         child:Container(
      //           width: double.infinity,
      //           height: 100,
      //           color: Colors.green,
      //           child: Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.asset('assets/herbal.png'),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Obat-obatan Herbal',
      //                       textAlign: TextAlign.right,

      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),),
      //         Container(
      //           width: double.infinity,
      //           height: 100,
      //           color: Colors.green.shade700,
      //           child: Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.asset('assets/syrup.png'),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Obat-obatan Bebas',
      //                       textAlign: TextAlign.right,

      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: double.infinity,
      //           height: 100,
      //           color: Colors.green,
      //           child: Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.asset('assets/pills.png'),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Obat-obatan Terbatas',
      //                       textAlign: TextAlign.right,

      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: double.infinity,
      //           height: 100,
      //           color: Colors.green.shade700,
      //           child: Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.asset('assets/heroin.png'),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Obat-obatan Narkotika',
      //                       textAlign: TextAlign.right,

      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

