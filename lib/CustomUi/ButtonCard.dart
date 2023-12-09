import 'package:chat_flutter/Model/ChatModel.dart';
import 'package:flutter/material.dart';
class ButtonCard extends StatelessWidget {
 const ButtonCard({Key? key, required this.contact}) : super(key: key);
  final   ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, 
      child: ListTile(
        leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            child: ClipOval(
              child: Image.asset(
                'assets/person.jpg',
                width: 50, // Adjust the width and height as needed
                height: 50,
                fit: BoxFit.cover, // You can use BoxFit.fill if you want to stretch the image to fill the circle
              ),
            ),
          ),
        title: const Text('Kamruddeen',style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),),
        subtitle: Text('hello, kya haal hai '),
      ),
    );
  } 
}