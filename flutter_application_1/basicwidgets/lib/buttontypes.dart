import 'package:flutter/material.dart';

class ButtonType extends StatelessWidget {
  const ButtonType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Text Button",style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 233, 243, 33), // Change this to the desired color
          ),

        ),
         
        TextButton.icon(onPressed: (){}, icon: Icon(Icons.grade), label: Text("This is my text button")
        ),


        ElevatedButton(onPressed:(){}, child: Text("Welcome to elevated button")
        ),

        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.grade), label: Text("Elevated button with icon")
        ),

        //outline button
        OutlinedButton(onPressed: (){}, child: Text("Outline Buttom")
        ),

                OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.grade), label: Text("Outline button with icon")
                ),

      ],
    );
  }
}
