// simple cpde fpr amimayion
// import 'package:flutter/material.dart';
// import 'dart:async';

// class MyHomePageA extends StatefulWidget {
//   @override
//   _MyHomePageAState createState() => _MyHomePageAState();
// }

// class _MyHomePageAState extends State<MyHomePageA>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 5));
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Animation Example'),
//       ),
//       body: Center(
//         child: FadeTransition(
//           opacity: _animation,
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             child: Center(
//               child: Text(
//                 'Fade In Animation',
//                 style: TextStyle(color: Colors.white, fontSize: 20.0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
//end of simplr code



// start of medium code

import 'package:flutter/material.dart';

class MyHomePageA extends StatefulWidget {
  @override
  _MyHomePageAState createState() => _MyHomePageAState();
}

class _MyHomePageAState extends State<MyHomePageA>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * 3.14159,
                    child: Text(
                      'Rotate Animation',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    // child: Image.asset("assets/stock.jpg",fit: BoxFit.cover,),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}












// import 'package:flutter/material.dart';



// class MyHomePageA extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePageA>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   bool _showFrontSide = true;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
//   }

//   void _toggleCard() {
//     if (_showFrontSide) {
//       _controller.forward();
//     } else {
//       _controller.reverse();
//     }
//     _showFrontSide = !_showFrontSide;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Complex Animation Example'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: _toggleCard,
//           child: AnimatedBuilder(
//             animation: _animation,
//             builder: (context, child) {
//               final angle = _animation.value * 3.14159; // convert to radians
//               return Transform(
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, 0.002)
//                   ..rotateY(angle),
//                 alignment: Alignment.center,
//                 child: _showFrontSide ? _buildFrontCard() : _buildBackCard(),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFrontCard() {
//     return Container(
//       width: 200,
//       height: 200,
//       color: Colors.blue,
//       child: Center(
//         child: Text(
//           'Front Side',
//           style: TextStyle(color: Colors.white, fontSize: 20.0),
//         ),
//       ),
//     );
//   }

//   Widget _buildBackCard() {
//     return Container(
//       width: 200,
//       height: 200,
//       color: Colors.green,
//       child: Center(
//         child: Text(
//           'Back Side',
//           style: TextStyle(color: Colors.white, fontSize: 20.0),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }










