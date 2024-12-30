import  'package:flutter/material.dart';
import 'package:waclone/Controller/widgets/button-navigation%20widget.dart';
import 'package:waclone/Controller/widgets/calls-widget.dart';
import 'package:waclone/Controller/widgets/community-widget.dart';
import 'package:waclone/Controller/widgets/mainchats%20widget.dart';
import 'package:waclone/View/homeview/update-view/view-status/updates-home-view.dart';

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
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Expanded
            (flex:20,
              child:
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                      Text('WhatsApp',
                          style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 30.0),
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
              select==1?ChatView() :select==2? UpdatesHomeScreen(): select==3?CommunityView() :CallsView()
          ),
          Expanded
            (flex:10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColumnButton( icon: Icons.chat_outlined,text:'Chats', onTap: (){
                  select=1;
                  setState(() {

                  });

                }),
                ColumnButton( icon: Icons.circle_outlined,text:'Updates',  onTap: (){
                  select=2;
                  setState(() {

                  });
                }),
                ColumnButton(icon: Icons.people_alt_outlined,text:'Communities',  onTap: (){
                  select=3;
                  setState(() {

                  });
                }),
                ColumnButton(icon: Icons.call,text:'Calls',  onTap: (){
                  select=4;
                  setState(() {

                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
