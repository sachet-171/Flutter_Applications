
// // // 1 main for material widgets test only
// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
   
//    return MaterialApp(
 
//     home: Text("hy everyone"),
//    );
//   }
   
// }








// //2 main for scafoold widgets

// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // 6 for changing the icons sign
//     final ThemeData theme=ThemeData(
//       primarySwatch: Colors.deepPurple,
//       appBarTheme: AppBarTheme( color:Colors.deepPurple,
//       ), 
//     );
   
//    return MaterialApp(
// // 5 for changing theme 
//   theme: theme.copyWith(
//     colorScheme: theme.colorScheme.copyWith(
//       secondary: Colors.red),
//     ),



//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('first project',
//         style: TextStyle(
//           color: Colors.white,
//         ),),


//         //8 for changing the color of text

//   // backgroundColor: Color.fromRGBO(17, 141, 141, 0.984),
//       ),
//       //3 using of body
//       body:  const Center(child: Text('hy sachet in body',
//       style: TextStyle(fontSize: 30,color: Colors.green,),),//used to increase the size
//         ),

//         // 4 for floating of button
//         floatingActionButton: FloatingActionButton(onPressed: () {
//           debugPrint("Button clicked");
//         },
//         //7 for adding of the icon with plus sign
//         child: Icon(Icons.add_circle_outline), // which is used for make icon circle shape
//          backgroundColor: Colors.red,
//         ), 
//          ),
//    );
//   }
  
// }












//3 main using of container

// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

 
// class myApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // 6 for changing the icons sign
//     final ThemeData theme=ThemeData(
//       primarySwatch: Colors.deepPurple,
//       appBarTheme: AppBarTheme( color:Colors.deepPurple,
//       ),
//     );
   
//    return MaterialApp(
// // 5 for changing theme 
//   theme: theme.copyWith(
//     colorScheme: theme.colorScheme.copyWith(
//       secondary: Colors.red),
//     ),



//     home: Scaffold(
//       backgroundColor: Colors.indigo, //add in container
//       appBar: AppBar(
//         title: Text('first project',
//         style: TextStyle(
//           color: Colors.white,
//         ),),


//         //8 for changing the color of text

//   // backgroundColor: Color.fromRGBO(17, 141, 141, 0.984),
//       ),

//        //9 new body for container
// //  body: Container(
//                                                                      //10 using of margin

// // // margin: EdgeInsets.symmetric(vertical: 50 , horizontal: 50,),
// // //or 
// // margin: EdgeInsets.fromLTRB(50, 20, 30, 40),
//                                                                              //paddding is generally used for child class or text movement
// // padding: EdgeInsets.all(35),

// //  // alignment: Alignment.center,
// // color: Colors.yellow,
// // child: Text('Hello sachet *10',
// // textAlign: TextAlign.center,),


//                                                                               //if you want to adjust the box with own type
// // //cmt alignment: Alignment.center, and add
// // constraints: BoxConstraints(
// //   minHeight: 200,
// //   minWidth: 200,
// //   maxHeight: 200,
// //   maxWidth: 200,
// // ),

// // ),

// // main new body for  container inside cotnainer
// // body:Center(
// // child: Container(
// //   //
// //   padding: EdgeInsets.all(25), //increase or decrease box size
// // width: 200,
// // height: 200,
// // color: Colors.blue,
// // //child container
// // child: Container(
// //   margin: EdgeInsets.all(22),
// //   height: 100,

// //   width: 100,
// //   color: Colors.pink,
// // ),

// // ),
// // ),

// //  4 main for box decoration new body

// // body: Center(
// //   child: Container(
// // padding: EdgeInsets.all(35),
// // height: 200,
// // width: 200,
// // // child: FlutterLogo(
// // // size: 92,
// // // ),
// // decoration: BoxDecoration(
  
// //   color: Colors.blueGrey,
  
// //   shape: BoxShape.rectangle,
// //   border: Border.all(width: 9,
// //   color: Colors.purple,
// //     ),l 
// //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topLeft: Radius.circular(40),),
// // image: ContainerLessons(),
  

// //   ),

// //   ),
  
// //   ),









//       //3 using of body
//       // body:  const Center(child: Text('hy sachet in body',
//       // style: TextStyle(fontSize: 30,color: Colors.green,),),//used to increase the size
//       //   ),




// //for row and colums 

// // body: Container(
// //   color: Colors.yellow,
// //   height: 400,
// // child: Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //   mainAxisSize: MainAxisSize.max,
// //   crossAxisAlignment: CrossAxisAlignment.center,
   
  
// //   children: [Container(
// // child: Text("Container 1"),
// // width: 100,
// // height: 100,
// // color: Colors.lightBlue,
// // ),    //container

// // //next container in same row
// // Container(
// // child: Text("Container 2"),
// // width: 100,
// // height: 100,
// // color: Colors.pink,
// // ),

// // Container(
// // child: Text("Container 3"),
// // width: 100,
// // height: 100,
// // color: Colors.green,
// // ),


// // ]),




// //  ),







// //
// //for expanded and flexible widgets.

// body: Container(
//   child: Row(children: OwerFlovProblem),
// ),




//         // 4 for floating of button
//         floatingActionButton: FloatingActionButton(onPressed: () {
//           debugPrint("Button clicked");
//         },
//         //7 for adding of the icon with plus sign
//         child: Icon(Icons.add_circle_outline), // which is used for make icon circle shape
//          backgroundColor: Colors.red,
//         ), 
//          ),
//    );
//   }

//   List<Widget> get OwerFlovProblem {
//     return [
// Expanded(
//   child: Container(width: 100,
//   height: 100,
//   color: Colors.red,),
// ),

// //second container
// Expanded(
//   child: Container(width: 600,
//   height: 100,
//   color: Colors.red,),
// ),


// //3 4 5 th container
// Expanded(
//   child: Container(width: 500,
//   height: 100,
//   color: Colors.black,),
// ),

// Expanded(
//   child: Container(width: 500,
//   height: 100,
//   color: Colors.blue,),
// ),

// Expanded(
//   child: Container(width: 500,
//   height: 100,
//   color: Colors.green,),
// )





// ];
//   }

// //   DecorationImage ContainerLessons() {
// //     return DecorationImage(image: NetworkImage('https:picsum.photos/250?image=9'),
// // fit: BoxFit.cover

// // );
//   }
  
// // }






//simple container example
// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Simple Container Example'),
//         ),
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             child: Center(
//               child: Text(
//                 'Hello, Container!',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

































































//example of 8 container  



// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Nested Containers'),
//         ),
//         body: ParentContainer(),
//       ),
//     );
//   }
// }

// class ParentContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       color: Colors.grey[200],
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ChildContainer(color: Colors.blue, text: 'Container 1'),
//               ChildContainer(color: Colors.green, text: 'Container 2'),
//               ChildContainer(color: Colors.orange, text: 'Container 3'),
//               ChildContainer(color: Colors.red, text: 'Container 4'),
//             ],
//           ),
//           SizedBox(height: 16.0), // Add spacing between the rows
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ChildContainer(color: Colors.yellow, text: 'Container 5'),
//               ChildContainer(color: Colors.purple, text: 'Container 6'),
//               ChildContainer(color: Colors.teal, text: 'Container 7'),
//               ChildContainer(color: Colors.pink, text: 'Container 8'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChildContainer extends StatelessWidget {
//   final Color color;
//   final String text;

//   ChildContainer({required this.color, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0, // Adjust the width as needed
//       height: 100.0, // Adjust the height as needed
//       color: color,
//       child: Center(child: Text(text)),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Containers in Rows and coloumn'),
//         ),
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildContainer(120.0, 80.0, Colors.blue, 'Container 1'),
//                 buildContainer(80.0, 120.0, Colors.green, 'Container 2'),
//                 buildContainer(100.0, 100.0, Colors.orange, 'Container 3'),
//                 buildContainer(150.0, 100.0, Colors.red, 'Container 4'),
//               ],
//             ),
//             SizedBox(height: 46.0),  //SizedBox widget is used to create empty space between 2 container rows
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildContainer(90.0, 70.0, Colors.yellow, 'Container 5'),
//                 buildContainer(110.0, 90.0, Colors.purple, 'Container 6'),
//                 buildContainer(130.0, 110.0, Colors.teal, 'Container 7'),
//                 buildContainer(70.0, 130.0, Colors.pink, 'Container 8'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildContainer(double width, double height, Color color, String label) {
//     return Container(
//       width: width,
//       height: height,
//       color: color,  //using of .this   same
//       child: Center(child: Text(label)),
//     );
//   }
// }






// //making of container using expended
// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Expanded Containers'),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         color: Colors.red,
//                         child: Center(child: Text('Container 1')),
//                       ),
//                     ),
//                     SizedBox(width: 10), // Add a gap
//                     Expanded(
//                       child: Container(
//                         color: Colors.blue,
//                         child: Center(child: Text('Container 2')),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
              
//                // Add a gap
//               Expanded(
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         color: Colors.green,
//                         child: Center(child: Text('Container 3')),
//                       ),
//                     ),
//                     SizedBox(width: 10), 
                    
                    
                    
//                     // Add a gap
//                     Expanded(
//                       child: Container(
//                         color: Colors.orange,
//                         child: Center(child: Text('Container 4')),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10), // Add a gap
//               Expanded(
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         color: Colors.purple,
//                         child: Center(child: Text('Container 5')),
//                       ),
//                     ),
//                     SizedBox(width: 10), // Add a gap
//                     Expanded(
//                       child: Container(
//                         color: Colors.yellow,
//                         child: Center(child: Text('Container 6')),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




//adding image in container from network


// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';


// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Container Inside container with network image'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child:Container(
//         width: 300,
//         height: 300,
//         color: Colors.blue,


//         child: Container(
//           width: 150,
//           height: 150,
//           alignment: Alignment.center,
           

//            //Decoration of the boxes

//           decoration: BoxDecoration(
//             color: Colors.blueGrey, 
//             shape: BoxShape.rectangle,
//             border: Border.all(width: 5,color: Colors.purple),
//             // borderRadius: BorderRadius.circular(15),
//             borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topLeft: Radius.circular(40))
//           ),
//           child: Image.network(
//             'https:picsum.photos/250?image=9', // URL of the network image
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//     )
//   );
// }
// }



//practise ques 
//make container rectanglular and adjust square container inside it and  adjust image inside also 
// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(' Square Container inside rectangle container'),
//         ),
//         body: Center(
//           child: Container(
//             width: 200.0, // Width of the rectangle container
//             height: 300.0, // Height of the rectangle container
//             color: Colors.blue, // Color of the rectangle container
//             child: Center(
//               child: Container(
//                 width: 100.0, // Width of the square container
//                 height: 100.0, // Height of the square container
//                 color: Colors.green, // Color of the square container
//                 child: Image.network(
//                   'https:picsum.photos/250?image=9', // URL of the network image
//                   fit: BoxFit.cover, // Adjust the image to cover the entire square container
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




//adjust of two square container in one rectagle container  
//using of row 

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,
          title: Text(' Two Square Container inside rectangle container ',style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Container(
            width: 300.0, 
            height: 200.0,
            color: Colors.blue, 
             
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green, 
                  child: Image.network(
                    'https:picsum.photos/250?image=9', 
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100.0, 
                  height: 100.0,
                  color: Colors.orange, 
                  child: Image.network(
                    'https:picsum.photos/250?image=9',
                    fit: BoxFit.cover, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



