import 'package:flutter/material.dart';

class UsingGriedView extends StatelessWidget {
  const UsingGriedView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using GriedView'),
      ),


      body: GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 

        itemBuilder: (BuildContext context, int index){
        return  GestureDetector(
          child: Container(
           margin: EdgeInsets.all(10),
           alignment: Alignment.bottomCenter,
           decoration: (BoxDecoration(
             border: Border.all(
               color:Colors.purple,
               width:4,
               style: BorderStyle.solid
             ),
              borderRadius: BorderRadius.all(
               new Radius.circular(30)), 
              boxShadow: [new BoxShadow(
                //spreadRadius: 10,
               // blurRadius: 20,
                color:Colors.pink,
                offset: new Offset(5, 10)
                
              )
              ],
              //shape: BoxShape.circle,
             color:Colors.purple[100* ((index+1)%9)],
             gradient: LinearGradient(colors:[Colors.pink,Colors.purple],
             begin: Alignment.bottomLeft,
             end:Alignment.topRight ),
             image:DecorationImage(
             image: AssetImage('assets/stock.jpg'),


               fit:BoxFit.contain,
               alignment: Alignment.topCenter),
        
            )),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Using GridView ${index+1}',
             style: TextStyle(fontSize: 18),
             textAlign: TextAlign.end,),
           ),
           
          ),
          // onTap: (){
          //   debugPrint('Clicked $index');
          // },
          // onDoubleTap: (){
          //   debugPrint('Double Clicked $index');
          // },
          // onLongPress: (){
          //   debugPrint('Long Press $index');
          // },
        );
      }
        ),
      
    );
  }
}




//do this first and then example of above
// import 'package:flutter/material.dart';

// class UsingGridView extends StatelessWidget {
//   const UsingGridView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Using GridView'),
//       ),
//       body: Center(
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(    // it is a delegate that controls the layout of a GridView with a fixed number of columns
//             crossAxisCount: 3, // Number of columns in the grid
//             crossAxisSpacing: 8.0, // Spacing between columns
//             mainAxisSpacing: 8.0, // Spacing between rows
//           ),
//           itemCount: 6, // Number of items in the grid
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               color: Colors.blue.shade300,
//               shadowColor: Colors.blueAccent,
//               elevation: 10,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Center(
//                 child: ListTile(
//                   leading: Icon(Icons.star),
//                   trailing: Icon(Icons.favorite),
//                   title: Text("Item $index"),
//                   subtitle: Text("Subtitle"),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

