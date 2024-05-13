//  meaning of slivers
//  SliverAppBar: A type of app bar that integrates with CustomScrollView and can expand, collapse, or stay pinned as the user scrolls.

// SliverList: Represents a scrollable list of widgets. It is optimized for large lists of items.

// SliverGrid: Represents a scrollable grid of widgets. It is optimized for large grids of items.

// SliverToBoxAdapter: Converts a non-scrollable widget into a sliver so that it can be used within a CustomScrollView.

// SliverPadding: Adds padding around another sliver.




//do this first (using  containers)

// import 'package:flutter/material.dart';

// class UsingCustomScrolview extends StatelessWidget {
//   const UsingCustomScrolview({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [    // "slivers" refer to a set of flexible, 
//       //              composable elements that can be used to create custom scrolling effects and layouts.
// SliverAppBar(

//   title: Text("Silver App bar"),
//   expandedHeight: 250,
//   backgroundColor: Colors. blueGrey,
// ),
// // add at last to show list below or see copy
// SliverList(
//   delegate: SliverChildListDelegate([
// Container(height: 200,color: Colors.purple.shade100,),
// Container(height: 200,color: Colors.purple.shade200,),
// Container(height: 200,color: Colors.purple.shade300,),
// Container(height: 200,color: Colors.purple.shade400,),
// Container(height: 200,color: Colors.purple.shade500,),
// Container(height: 200,color: Colors.purple.shade600,),


//   ]
//   )
//   )




//       ],
      
//     );
//   }
// }

//end of 1st example


// start of second example  (using card)

//  import 'package:flutter/material.dart';

// class MyHomePage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 200.0,
//             floating: true,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('Flexible Image'),
//               background: Image.asset(
//                 'assets/stock.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 8.0,
//               mainAxisSpacing: 8.0,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 // Replace this with your grid item widget
//                 return Container(
//                   color: Colors.blueAccent,
//                   child: Center(
//                     child: Text('Grid Item $index'),
//                   ),
//                 );
//               },
//               childCount: 20, // Adjust the count as needed
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//end of 2nd example






//start of 3rd example(using all content)


import 'package:flutter/material.dart';

class UsingCustomScrolView extends StatelessWidget {
  const UsingCustomScrolView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Sliver Appbar',
          style:TextStyle(color: Colors.black)),
          expandedHeight: 300,
          snap:true,
          floating: true,
          pinned: true,
          backgroundColor: Colors.blueGrey,
          flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/stock.jpg'),),
        ),
//using of slivergrid 
        SliverGrid(delegate: SliverChildListDelegate(constList),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),

        SliverGrid(delegate:SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 12),  //sliverListwithBuilder call from below function
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),

        // SliverGrid(delegate: SliverChildBuilderDelegate
        // (sliverListwithBuilder,childCount: 12),  //sliverListwithBuilder call from below function
        // gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300) ,),

//create of silver list using silver padding
        SliverPadding(padding: EdgeInsets.all(12),
        sliver: SliverList(   //create of silver list
          delegate: SliverChildListDelegate(constList)),
        ),

        //paddding and display for silvergrid
        SliverGrid.count(crossAxisCount:3 ,children: constList,),
        SliverGrid.extent(maxCrossAxisExtent: 250,children: constList,),

//create of silver list using silver padding

         SliverPadding(padding: EdgeInsets.all(10),
        sliver:
        SliverList(
        delegate:SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 7)),
        ),

        
//create of silver list using SliverFixedExtentList
        SliverPadding(padding: EdgeInsets.all(5),
        sliver:SliverFixedExtentList(delegate:SliverChildListDelegate(constList) ,
        itemExtent: 200,)),
        SliverFixedExtentList(delegate: SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 7), itemExtent: 100)
      ],
    );
      
    
  }
//for sliverlist
  List<Widget> get constList {
    return [
          Container(height:150,
          color:Colors.purple.shade100,
          alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade200,
          alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade300,
           alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade400, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade500, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade600,
           alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade700, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),

        ];
  }
//for builder sliverlist
  Widget? sliverListwithBuilder(BuildContext context, int index) {
  
   return Container(height:150,
          color:Colors.pink[100*((index+1)%9)],
          alignment: Alignment.center,
          child: Text('Builder List',
          style: TextStyle(fontSize: 24),),
    );
  }
}


// // end of third example

