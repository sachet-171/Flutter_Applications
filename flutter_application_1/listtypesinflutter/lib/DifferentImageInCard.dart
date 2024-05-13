import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  // List of image assets
  final List<String> images = [
    'assets/girl.jpg',
    'assets/Splash.png',
    'assets/Splash.png',
     'assets/girl.jpg',
   'assets/Splash.png',
    'assets/girl.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flexible Image'),
              background: Image.asset(
                'assets/stock.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // Replace this with your grid item widget
                return Container(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Image.asset(
                      images[index],
                      fit:BoxFit.fill,
                    ),
                  ),
                );
              },
              childCount: images.length, // Use the length of your images list
            ),
          ),
        ],
      ),
    );
  }
}
