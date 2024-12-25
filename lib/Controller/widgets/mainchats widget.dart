import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';



class ChatView extends StatelessWidget {
  ChatView({super.key});
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
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
    'assets/img6.jpg',
    'assets/img7.jpg',
    'assets/img8.jpg',
    'assets/img9.jpg',
    'assets/img10.jpg',
    'assets/img11.jpg',
    'assets/img12.jpg',
    'assets/img13.jpg',
    'assets/img14.jpg',
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
  List totalMsg=[
    '2',
    '1',
    '9',
    '5',
    '7',
    '12',
    '3',
    '1',
    '4',
    '8',
    '5',
    '6',
    '11',
    '1',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
// color: Colors.blue,
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
                                child: Text(totalMsg[index]),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
              ),
        ],
      ),
    );
  }
}
