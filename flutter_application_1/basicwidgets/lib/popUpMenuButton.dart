import 'package:flutter/material.dart';

class UsingPopUpmenuButton extends StatefulWidget {
  const UsingPopUpmenuButton({Key? key}) : super(key: key);

  @override
  _UsingPopUpmenuButtonState createState() => _UsingPopUpmenuButtonState();
}

class _UsingPopUpmenuButtonState extends State<UsingPopUpmenuButton> {
  String chosenValue = '';   //yo bar ma j value rakhyo uta display huxa

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (value) {
          setState(() {
            chosenValue = value as String;
          });
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            PopupMenuItem(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            PopupMenuItem(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ];
        },
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          child: Row(
            children: [
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(width: 8),
              Text(
                chosenValue,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

