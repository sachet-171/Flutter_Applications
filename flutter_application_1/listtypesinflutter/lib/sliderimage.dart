
import 'package:flutter/material.dart';

class MyHomePageimage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageimage>


 with TickerProviderStateMixin {
 late  AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  bool _showFirstImage = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.0, 0.0),
    )
    .animate(_controller);
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showFirstImage = !_showFirstImage;
          _controller.reverse();
        });
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Transition'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: _showFirstImage
                ? Image.asset(
                    'assets/girl.jpg', // First image URL
                    key: ValueKey<String>('firstImage'),
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/stock.jpg', // Second image URL
                    key: ValueKey<String>('secondImage'),
                    fit: BoxFit.contain,
                  )
                  
                  
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