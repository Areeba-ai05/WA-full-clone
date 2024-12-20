import  'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
   ExpandedClass({super.key});
 List senderName=[
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
 ];

 List lastMessages=[
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
 ];
 List userImage=[
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
 ];
 //LIST NAME
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body: Column(
        children: [
          Expanded
            (flex:10,
              child: Container(
                color: Colors.red,
              )),
          Expanded
            (flex:80,
              child: Container(
                  color: Colors.blue,
                  child: ListView.builder(
                    itemCount: senderName.length,//starting =0, ending =5-1
                    itemBuilder: (context,index)
                    {
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.black,),
                          title: Text(senderName[index]),
                          subtitle: Text(lastMessages[index]),
                          trailing: Text('09:12AM'),
                        ),
                      );
                    },
                  )




              )),
          Expanded
            (flex:10,
              child: Container(
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
