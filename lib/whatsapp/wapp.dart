import  'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
  const ExpandedClass({super.key});

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
                    itemCount: 5,//starting =0, ending =5-1
                    itemBuilder: (context,index)
                    {
                      return CircleAvatar(
                        child:Text('${index+1}'),
                        //child: Text(index.toString()),
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
