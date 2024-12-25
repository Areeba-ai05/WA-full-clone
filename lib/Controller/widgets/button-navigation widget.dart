import  'package:flutter/material.dart';

class ColumnButton extends StatelessWidget {
  const ColumnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.message, color: Colors.white),
        Text('Chats',style:TextStyle(color:Colors.white)),
      ],
    );
  }
}
