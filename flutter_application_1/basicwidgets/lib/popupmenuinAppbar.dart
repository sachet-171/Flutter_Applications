import 'package:flutter/material.dart';

class UsingPopUpmenuButton1 extends StatefulWidget {
  const UsingPopUpmenuButton1({Key? key}) : super(key: key);

  @override
  _UsingPopUpmenuButtonState1 createState() => _UsingPopUpmenuButtonState1();
}

class _UsingPopUpmenuButtonState1 extends State<UsingPopUpmenuButton1> {
  String chosenValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold( //use app bar instead of center
      appBar: AppBar(
        title: Text(chosenValue.isEmpty ? 'App Bar Title' : chosenValue), //added value
        actions: [ //add action and put the popup function state
          PopupMenuButton(
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
              child: Icon(Icons.more_vert),       //dont use row because we have to diaplay in app bar
              //only use for container icon not for text for text make body  center and display text
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Hello guys',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

