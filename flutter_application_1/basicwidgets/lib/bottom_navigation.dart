import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButtonPage extends StatefulWidget {
  @override
  _MyButtonPageState createState() => _MyButtonPageState();
}

class _MyButtonPageState extends State<MyButtonPage> {
  int _selectedIndex = 0;

  // Define widget options for different pages
  static List<Widget> _widgetOptions = [
    Text(' Welcome to Home Page'),
    Text(' Welcome to About Page'),
    Text(' Welcome to Contact Page'),
    Text(' Welcome to Service Page'),
  ];

  // Function to handle item tap in the BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Button Navigation Bar '),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex], // Display selected page
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Define items for the bottom navigation bar
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red, // Change background color
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
            backgroundColor: Colors.green, // Change background color
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
            backgroundColor: Colors.blue, // Change background color
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Service',
            backgroundColor: Colors.orange, // Change background color
          ),
        ],
        currentIndex: _selectedIndex, // Current selected index
        selectedItemColor: Colors.blue, // Color of the selected item
        onTap: _onItemTapped, // Function to handle item tap
      ),
    );
  }
}
