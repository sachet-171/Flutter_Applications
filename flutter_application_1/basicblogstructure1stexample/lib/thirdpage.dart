//create third page while do onepage.dart below code 



import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String selectedItem;

  ThirdPage(this.selectedItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Center(
        child: Text('Selected Item: $selectedItem'),
      ),
    );
  }
}
