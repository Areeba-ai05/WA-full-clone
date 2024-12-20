import  'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
  ExpandedClass({super.key});
  List senderName=[
    'Abeeha',
    'Zunaisha',
    'Maryam',
    'Hania',
    'Sara',
    'Bushra',
    'Dania',
    'Eshmal',
    'Fareeha',
    'Irum',
    'Eman',
    'Vania',
    'Roha',
    'Hafsa',
  ];

  List lastMessages=[
    'Hey! Whats up?',
    'On my way, see you soon!',
    'Can you send me the file?',
    'Don’t forget about our meeting tomorrow',
    'Good morning! Have a great day ahead',
    'Where are you right now',
    'Thanks a lot! You’re the best. ',
    'Let’s catch up this weekend?',
    'Sorry, I missed your call. What’s up',
    'Happy birthday!',
    'Let me know when you’re free to chat',
    'Check this out! [link/image',
    'Don’t forget about our meeting tomorrow',
    'LOL, that was hilarious!',
  ];
  List userImage=[
    'assets/img1.jpg',
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
  List msgTiming=[
    '07:34 PM',
    '05:55 AM',
    '1:15 PM',
    '10:25 PM',
    'Yesterday',
    '11:50 AM',
    '07:34 PM',
    'Yesterday',
    '12/8/24',
    '4:27 PM',
    '8:55 AM',
    '6:21 PM',
    '12:09 PM',
    '10:40 AM',

  ];
  //LIST NAME
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title:Text('WhatsApp',
          style: TextStyle(fontSize:20,fontWeight: FontWeight.w500, color:Colors.white),),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert,color: Colors.white,),
          SizedBox(width: 10,),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Expanded
            (flex:10,
              child: Container(
                //color: Colors.red,
                  height:5,
                  width: 500,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.grey,
                      width: 5,
                    ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(top: 1.0, left: 50.0),
                    child:Row(
                      children: [
                        Icon(
                          Icons.circle_outlined, // Replace with any icon of your choice
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10), // Add spacing between icon and text
                        Text(
                          'Ask Meta AI or Search',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),),],),)
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
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(userImage[index])),
                          title: Text(senderName[index]),
                          subtitle: Text(lastMessages[index]),
                          trailing: Column(
                            children: [
                              Text(msgTiming[index]),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 10,
                                child: Text('9'),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
              )),
          Expanded
            (flex:10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.message, color: Colors.white),
                        Text('Chats',style:TextStyle(color:Colors.white)),
                      ],
                    ),

                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Icon(Icons.circle_outlined, color: Colors.white),
                        Text('Updates',style:TextStyle(color:Colors.white)),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Icon(Icons.people_alt_outlined,  color: Colors.white),
                        Text('Communities',style:TextStyle(color:Colors.white)),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Icon(Icons.call,  color: Colors.white),
                        Text('Calls',style:TextStyle(color:Colors.white)),
                      ],
                    ),
                  ],

              ),
          ),
        ],
      ),
    );
  }
}
