import 'package:flutter/material.dart';

class ScatteredAnimationDemo extends StatefulWidget {
  @override
  _ScatteredAnimationDemoState createState() => _ScatteredAnimationDemoState();
}

class _ScatteredAnimationDemoState extends State<ScatteredAnimationDemo>

 with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _moveAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.3, curve: Curves.ease),
      ),
    );

    _sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.3, 0.6, curve: Curves.easeInOut),
      ),
    );

    _moveAnimation = Tween<double>(begin: 0.0, end: -200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 0.8, curve: Curves.easeInOut),
      ),
    );

    _colorAnimation = ColorTween(begin: Colors.transparent, end: Colors.orange).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scattered Animation Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0.0, _moveAnimation.value),
              child: Opacity(
                opacity: _fadeAnimation.value,
                child: Container(
                  width: _sizeAnimation.value,
                  height: _sizeAnimation.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    
                    color: _colorAnimation.value,
                  ),
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/girl.jpg', // Replace this with your image URL
                        width: _sizeAnimation.value - 20,
                        height: _sizeAnimation.value - 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
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
