import 'package:flutter/material.dart';

// Convert to StatefulWidget for mutable state
class DropdownButtonLesson extends StatefulWidget {
  const DropdownButtonLesson({Key? key}) : super(key: key);

  @override
  _DropdownButtonLessonState createState() => _DropdownButtonLessonState();    //addimg for setState  
}

// State class to manage the mutable state
class _DropdownButtonLessonState extends State<DropdownButtonLesson> {
  // Initialize the chosenValue with "1" to display it initially
  String chosenValue = "2";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          // Dropdown items with corresponding values
          DropdownMenuItem(
            child: Text("One"),
            value: "1",
          ),
          DropdownMenuItem(
            child: Text("Two"),
            value: "2",
          ),
          DropdownMenuItem(
            child: Text("Three"),
            value: "3",
          ),
          DropdownMenuItem(
            child: Text("Four"),
            value: "4",
          ),
        ],
        value: chosenValue,
        // Callback when a value is selected
        onChanged: (String? newValue) {
          // Use setState to update the state and trigger a rebuild
          if (newValue != null) {
            setState(() {
              chosenValue = newValue;
            });
          }
        },
      ),
    );
  }
}
