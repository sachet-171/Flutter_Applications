
import 'package:flutter/material.dart';

class MyHomePage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //make of custom app bar 
        preferredSize: Size.fromHeight(250.0), // Adjust the height as needed
        child: AppBar(
          title: Text('Fixed App Bar'),
          flexibleSpace: Container(
            height: 300.0, // Adjust the height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/girl.jpg'), // Replace with your image asset
                fit: BoxFit.cover, // Set the fit property
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('List item $index'),
                );
              },
              childCount: 50, // Adjust the count as needed
            ),
          ),
        ],
      ),
    );
  }
}
