import 'package:flutter/material.dart';

import 'fifthpage.dart';

class Fourthpage extends StatelessWidget {
  final List<String> itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FourthPage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Change the cross axis count according to your needs
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow,
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    title: Text(itemList[index]
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fifthpage()),
                      );
                    },
                  ),
                );
              },
            ),
          ),
         
        ],
      ),
    );
  }
}
