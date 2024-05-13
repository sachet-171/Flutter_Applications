
import 'package:flutter/material.dart';

import 'herosecondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select a Image',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>SecondPage(
                    imageUrl: 'assets/girl.jpg',
                    topic: 'Girl with the post',
                    description: 'Description for Topic 1',
                  ),
                ),
              );
            },
            child: Hero(
              tag: 'imageHero1',
              child: Image.network(
                'assets/girl.jpg',
                fit: BoxFit.cover,
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    imageUrl: 'assets/stock.jpg',
                    topic: 'Stock rate',
                    description: 'Description for Topic 2',
                  ),
                ),
              );
            },
            child: Hero(
              tag: 'imageHero2',
              child: Image.network(
                'assets/stock.jpg',
                fit: BoxFit.cover,
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
