import  'package:flutter/material.dart';

class ColumnButton extends StatelessWidget {
  String text;
  IconData icon;
  VoidCallback onTap;
   ColumnButton({super.key, required this.text,required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return   Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            icon:Icon(icon),
        onPressed: onTap,
        ),
        Text(text)
      ],
    );
  }
}
