import 'package:basicwidgets/DropdownButton.dart';
import 'package:basicwidgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'buttontypes.dart';
import 'popUpMenuButton.dart';
import 'popupmenuinAppbar.dart'; // Import your ButtonType class


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,
          
          title: Text('Basic Widgets'),
        ),
        body: Center(
          child: MyButtonPage(),
          
        ),
      ),
    );
  }
}
