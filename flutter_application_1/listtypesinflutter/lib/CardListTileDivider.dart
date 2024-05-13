
//simple example of divider with 2 listview seperated by divivder
// import 'package:flutter/material.dart';

// class tiledivider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Two ListViews with divider'),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView(
                
//                 children: [
                
//                   ListTile(

//                     title: Text('List 1'),
                    
//                   ),
//                 ],
//               ),
//             ),
//             Divider(height: 30, color: Colors.pink), // Divider between lists
//             Expanded(
//               child: ListView(
//                 children: [
//                   ListTile(
//                     title: Text('List 2'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//example of orginal tiledivider

import 'package:flutter/material.dart';

class UsingCardLisTile extends StatelessWidget {
  const UsingCardLisTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Card ListTile divider'),
      ),
      body:Center(
        child:ListView(
          children:[ Column(
            children: [
             listElement(),
              listElement(),
              listElement(),
              listElement(),
               listElement(),
              listElement(),
              listElement(),
              listElement(),
              listElement(),
              
            ],
          ),
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Change the text color
    padding: EdgeInsets.all(16.0), // Set padding
    side: BorderSide(width: 2, color: Colors.red), // Set border width and color
  ),
  child: Text('Custom Elevated Button'),
),
],
          
        ), 
        )
      
    );
  }






  SingleChildScrollView usingScrollView() {
    return SingleChildScrollView(
        child: Column(
          children: [
           listElement(),
            listElement(),
            listElement(),
            listElement(),
             listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
      
            
          ],
        ),
      );
  }

  Column listElement() {
    return Column(
        children: [
          Card(
            child:ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              trailing: Icon(Icons.arrow_back),
            ),
            color: Colors.purple.shade300,
            shadowColor: Colors.pink,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
            //child: Text('Using Card',style: TextStyle(fontSize: 36),),
          ),
          Divider(color:Colors.pink,  //it is used to divide 2 card by green line
          thickness: 3,   //left right handle
          indent: 20,
          endIndent:500 , // line half banauni ki full
          height: 20,)
        ],
      );
  }
}