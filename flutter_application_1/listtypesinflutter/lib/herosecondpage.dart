import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String imageUrl;
  final String topic;
  final String description;

  SecondPage({
    required this.imageUrl,
    required this.topic,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: 'imageHero',
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 300.0,
              height: 300.0,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            topic,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}