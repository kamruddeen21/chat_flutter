import 'package:chat_flutter/CustomUi/ContactCard.dart';
import 'package:chat_flutter/Model/ChatModel.dart';
import 'package:flutter/material.dart';
class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contact =[
    
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Select Contact',style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),),
            Text('300 contact',
            style: TextStyle(
              fontSize: 13,
            
            ),),
          ],
        ),
        actions: [
          IconButton( icon: const Icon(Icons.search,size: 26,
          ),onPressed: () {}),
           PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
            return[
              const PopupMenuItem(value: 'Invite a fiend',child: Text('Invite a fiend'),),
               const PopupMenuItem(value: 'Contacts',child: Text('Contacts'),),
                const PopupMenuItem(value: 'Refresh',child: Text('Refresh'),),
                 const PopupMenuItem(value: 'Help',child: Text('Help'),),
                 
            ];   
          }
        ),
        ],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index)=> const ContactCard(),)
    );
  }
}