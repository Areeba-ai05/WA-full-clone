import  'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  String text;
  IconData icon;
   AppBarWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.black,
      title:Text(text,
        style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
      actions: [
        Icon(icon,color: Colors.white,),
        SizedBox(width: 10,),
        Icon(Icons.more_vert,color: Colors.white,),
        SizedBox(width: 10,),
      ],
    );
  }
}
