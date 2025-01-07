import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                          Text('Calls',
                            style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.camera_alt_outlined,color: Colors.white,),
                              SizedBox(width: 10,),
                              Icon(Icons.search),
                              SizedBox(width: 10,),
                              Icon(Icons.more_vert,color: Colors.white,),
                              SizedBox(width: 10,),

                            ],
                          ),
                        ],
                      ),
                    ),]
              )
          ),],

      ),
    );
  }
}
