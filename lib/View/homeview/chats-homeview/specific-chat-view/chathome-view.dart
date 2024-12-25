import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecificChat extends StatelessWidget {
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


  SpecificChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(itemCount:senderName.length,
      itemBuilder: (context,index){
        return ListTile(

          title:Text(senderName[index]) ,
          leading:CircleAvatar(
              backgroundImage: AssetImage(userImage[index])
          ) ,
          subtitle:Text(lastMessages[index]),
        );
      } ,)
      //
    );
  }
}
