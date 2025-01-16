import  'package:flutter/material.dart';
import 'package:waclone/Controller/widgets/button-navigation%20widget.dart';
import 'package:waclone/Controller/widgets/calls-widget.dart';
import 'package:waclone/Controller/widgets/community-widget.dart';
import 'package:waclone/Controller/widgets/mainchats%20widget.dart';
//import 'package:waclone/View/homeview/update-view/updates-home-view.dart';

import '../../homeview/update-view/updateshomeview.dart';

class ExpandedClass extends StatefulWidget {
  const ExpandedClass({super.key});

  @override
  State<ExpandedClass> createState() => _ExpandedClassState();
}

class _ExpandedClassState extends State<ExpandedClass> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   backgroundColor:Colors.black,
      //   title:Text('WhatsApp',
      //     style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
      //   actions: [
      //     Icon(Icons.camera_alt_outlined,color: Colors.white,),
      //     SizedBox(width: 10,),
      //     Icon(Icons.more_vert,color: Colors.white,),
      //     SizedBox(width: 10,),
      //   ],
      // ),
backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded
            (
              flex:20,
              child:
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('WhatsApp',
                            style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
                          Row(

                            children: [
                              Icon(Icons.camera_alt_outlined,color: Colors.white,),
                              SizedBox(width: 10,),
                              Icon(Icons.more_vert,color: Colors.white,),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 30.0),
                          child:Row(
                            children: [
                              Container(
                                height: 40,
                                width: 450,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                                child:
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                      child: Icon(
                                        Icons.circle_outlined, // Replace with any icon of your choice
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25.0),
                                      child: Text(
                                        'Ask Meta AI or Search',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white),),
                                    ),
                                  ],
                                ),
                              ),

                            ],),),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded
            (flex:70,
              child:
              select==1?ChatView() :select==2? UpdatesHomeScreen_(): select==3?CommunityView() :CallsView()
          ),
          Expanded
            (flex:10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      select = 1;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Icon(Icons.chat_outlined, color: Colors.white), // White icon
                        Text('Chats', style: TextStyle(color: Colors.white)), // White text
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      select = 2;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Icon(Icons.circle_outlined, color: Colors.white), // White icon
                        Text('Updates', style: TextStyle(color: Colors.white)), // White text
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      select = 3;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Icon(Icons.people_alt_outlined, color: Colors.white), // White icon
                        Text('Communities', style: TextStyle(color: Colors.white)), // White text
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      select = 4;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Icon(Icons.call, color: Colors.white), // White icon
                        Text('Calls', style: TextStyle(color: Colors.white)), // White text
                      ],
                    ),
                  ),
                ],
              ),
            )
            ,

          ),
        ],
      ),
    );
  }
}
