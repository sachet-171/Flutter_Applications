// import 'package:flutter/material.dart';

// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         automaticallyImplyLeading: false, //to remove back arrow
//         title: Text('FirstPage'),
//         backgroundColor: Colors.green,
//       ), 
//       body: Center(child:Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [Text("First page",style: TextStyle(fontSize: 36),),
//         ElevatedButton(onPressed: (){
//           //using of pop for return back
//         Navigator.of(context).pop();
//        // Navigator.pop(context);
//         }, 
//         child: Text("Back Buttom",style: TextStyle(fontSize: 36),),
//         style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),
        
//         )
//         ]
//         )),
//     );
//   }
// }




//second phase

import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
   FirstPage({ Key? key }) : super(key: key);
    int number=0;
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return  WillPopScope(
      onWillPop: (){
        print('WillPopScope is run');
        number=Random().nextInt(100);
        Navigator.pop(context,number);
        return Future.value(true);
      },
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('First Page'),
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text('First Page',style: TextStyle(fontSize: 36),),
                ElevatedButton(onPressed: (){
                  number=Random().nextInt(100);
                  print('number is: $number');
                  Navigator.of(context).pop(number);
                 // Navigator.pop(context);
                }, 
                child: Text('Back Button',style: TextStyle(fontSize: 36),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300),),
    
                  ElevatedButton(onPressed: (){
                  number=Random().nextInt(100);
                  print('number is: $number');
                  Navigator.of(context).pushNamed('/secondPage');
                 // Navigator.pop(context);
                }, 
                child: Text('Second Page',style: TextStyle(fontSize: 36),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink.shade300),),
    
    
                ElevatedButton(onPressed: (){
                 if(Navigator.of(context).canPop()){
                 print('Yes return');
               }
               else{
                 print('No return');
               }
              }, 
                child: Text('Using canPop',style: TextStyle(fontSize: 36),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300),)
                 
              ],
            ),)
          
        
      ),
    );
  }
}
