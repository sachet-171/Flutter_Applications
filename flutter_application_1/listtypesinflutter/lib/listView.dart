




// //list view for single list  simple


// import 'package:flutter/material.dart';

// class UsingListView extends StatelessWidget {
//   const UsingListView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Using ListView'),
//       ),
//       body: Center(
//         child: Card(
//           color: Colors.purple.shade300,
//           shadowColor: Colors.pink,
//           elevation: 20,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: ListTile(
//             leading: Icon(Icons.arrow_forward),
//             trailing: Icon(Icons.arrow_back),
//             title: Text("Title"),
//             subtitle: Text("Subtitle"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// stop of simple example of list view


//start of medium list view

// import 'package:flutter/material.dart';

// class MyListView extends StatelessWidget {
//   const MyListView({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> items = List.generate(20, (index) => 'item $index');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Simple List View"),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(items[index]),
//             onTap: () {
//               showsnackBar(context, 'Tapped on ${items[index]}');
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// void showsnackBar(BuildContext context, String message) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(message),
//       duration: Duration(seconds: 2),
//     ),
//   );
// }
//end of simple list view




//start of another decorative list view  which is add on  previous code
// import 'package:flutter/material.dart';

// class MyListView extends StatelessWidget {
//   const MyListView({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> items = List.generate(20, (index) => 'Item $index');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("simple List View"),
//       ),
//       body: Container(  //add
//         padding: EdgeInsets.all(16.0),//add
//         color: Colors.lightBlue,  // add to change the background colour
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Card( //add
//               elevation: 4.0, //add
//               color: Colors.yellowAccent, //add  to change the colour of
//               margin: EdgeInsets.symmetric(vertical: 8.0), //add
//               child: ListTile(
//                 title: Text(
//                   items[index],
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),//add
//                 ),
//                 subtitle: Text("Subtitle for ${items[index]}"),
//                 onTap: () {
//                   showsnackBar(context, 'Tapped on ${items[index]}');
//                 },
//                 trailing: Icon(Icons.arrow_back),//add
//                 leading: Icon(Icons. arrow_forward),//add
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// void showsnackBar(BuildContext context, String message) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(message),
//       duration: Duration(seconds: 2),
//     ),
//   );
// }


//end of decorative list view














//start of hard list view with easylloading package


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UsingListView extends StatelessWidget {
  UsingListView({Key? key}) : super(key: key);

  List<Book> allBooks =
      List.generate(20, (index) => Book(index + 1, 'Book Name ${index + 1}', 'Writer Name ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using ListView'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {          //using of item builder to build a cards item
          var currentBook = allBooks[index];
          return Card(          //gemerate the card 
            color: Colors.pink.shade100,
            child: ListTile(            //list tile
              onTap: () {
                // Commented out the line that changes background color
                 EasyLoading.instance.backgroundColor = Colors.green;
                EasyLoading.showToast( 
                  'Do you want to click here',
                  duration: Duration(seconds:1),
                  dismissOnTap: false,
                  toastPosition: EasyLoadingToastPosition.center,
                );
              },
              onLongPress: () {
                usingAlertDialog(context, "please don't click more");
              },
              title: Text(currentBook.name),
              subtitle: Text(currentBook.writer),
              leading: CircleAvatar(
                child: Text(currentBook.id.toString()),
              ),
            ),
          );
        },
        itemCount: allBooks.length,
        separatorBuilder: (context, index) {
          var newIndex = index + 1;         //using of tile divider we will study later
          if (newIndex % 5 == 0) {
            return Divider(
              color: Colors.purple,
              thickness: 3,
            );
          }
          return Container();
        },
      ),
    );
  }

  void usingAlertDialog(BuildContext myContext, String message) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

class Book {
  int id = 0;
  String name = '';
  String writer = '';

  Book(this.id, this.name, this.writer);
}



// end of hard list view with easylloading package






