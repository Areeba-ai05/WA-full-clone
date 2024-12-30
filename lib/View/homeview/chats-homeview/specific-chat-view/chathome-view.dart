import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecificChat extends StatelessWidget {
  String title;
  String subtitle;
  String image;

  SpecificChat({super.key, required this.title, required this.subtitle, required this. image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(backgroundImage: AssetImage(image),),
               title: Text(title),
      ),
    );
  }
}
