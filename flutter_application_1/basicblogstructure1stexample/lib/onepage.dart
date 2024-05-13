// first do this simple code  for onepage.dart and last for add list view create thirdpage.dart and 
//do the below code..

// import 'package:flutter/material.dart';
// import 'secondpage.dart';

// class OnePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('OnePage'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondPage()),
//             );
//           },
//           child: Text('Move to SecondPage'),
//         ),
//       ),
//     );
//   }
// }

//do this code for doing list and create thirdpage.dart
import 'package:flutter/material.dart';
import 'thirdpage.dart';
import 'secondpage.dart';

class OnePage extends StatelessWidget {
  final List<String> itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnePage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow,
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    title: Text(itemList[index]
                    ),
                    onTap: () {   //using of ontap
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage(itemList[index])
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(        //doing of push
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Move to SecondPage'),
            ),
          ),
        ],
      ),
    );
  }
}
