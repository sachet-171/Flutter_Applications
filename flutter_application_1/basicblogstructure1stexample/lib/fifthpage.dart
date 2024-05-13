import 'package:flutter/material.dart';

class Fifthpage extends StatelessWidget {
  const Fifthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome to fifth page '),
      
      ),
      body: Image.asset("assests/login.jpg"),
    );
  }
}