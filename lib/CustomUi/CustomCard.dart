import 'package:chat_flutter/Model/ChatModel.dart';
import 'package:chat_flutter/screen/IndividualPage.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);

  final ChatModel chatModel;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => IndividualPage (chatModel: chatModel,),)
          );
      },
      child: Column(
        children: [
          ListTile( 
            leading:  CircleAvatar(
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
            title:  Text(
              chatModel.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,  
            ),
            ),
            subtitle:Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 5,
                ),
                 Text(
                  'Hi ,kya haal hai'),
              ],
            ),
            trailing: const Text ('12:00'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,right: 80),
            child: Divider(
               thickness: 1,),
          )
        ],
      ),
    );
  }
}