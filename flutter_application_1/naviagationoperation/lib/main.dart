// import 'package:flutter/material.dart';
// import 'package:naviagationoperation/mainpage.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//       home: MainPage(),
    
//       );
        

//   }
// }



//second main page
import 'package:flutter/material.dart';

import 'package:naviagationoperation/FirstPage.dart';
import 'package:naviagationoperation/usingOnGenerateRoute.dart';

import 'mainpage.dart';
import "SecondPart.dart";
import "FirstPage.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //home: MainPage(),
      /* routes: {
        '/firstPage':(context)=>FirstPage(),
        '/':(context)=>MainPage(),
        '/secondPage':(context)=>SecondPage(),
      },
      onUnknownRoute: (settings)=>MaterialPageRoute(builder: (context)=>
      Scaffold(appBar: AppBar(title:Text('Error Page'),),
              body:Center(child: Text('404',style: TextStyle(fontSize: 36),),))), */
        
      onGenerateRoute:GenerateRoute.generateRoute,
    );
  }
}