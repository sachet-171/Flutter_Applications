import 'package:flutter/material.dart';
class HorizontalScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Number of items in each row
                childAspectRatio: 2, // Adjust this value to change the width

      ), 
      itemCount: 10, // Number of items in the grid
      itemBuilder: (context, index) {
        // You can replace this with your custom widget for each grid item
        return Card(
          
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text('Item $index'),
          ),
        );
      },
    );
  }
}