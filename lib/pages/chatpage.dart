import 'package:chat_flutter/CustomUi/CustomCard.dart';
import 'package:chat_flutter/Model/ChatModel.dart';
import 'package:chat_flutter/screen/Selectcontact.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chat=[
    ChatModel(
      name:'kamruddeen',
      isGroup:false,
      currentMessage:'Hi,kya haal hai',
      time:'12:5',
     icon: 'person.assets', status: '', 
    ),
      ChatModel(
      name:'Raja',
      isGroup:false,
      currentMessage:'Hi,kya haal hai',
      time:'12:00',
     icon: 'person.assets', status: '', 
    ),
      ChatModel(
      name:'Munna',
      isGroup:true,
      currentMessage:'Hi,kya haal hai',
      time:'12:5',
     icon: 'person.assets', status: '', 
    ),
      ChatModel(
      name:'Rajesh',
      isGroup:false,
      currentMessage:'Hi,kya haal hai',
      time:'12:5',
     icon: 'person.assets', status: '', 
    ),
      ChatModel(
      name:'kamruddeen',
      isGroup:true,
      currentMessage:'Hi,kya haal hai',
      time:'12:5',
     icon: 'person.assets', status: '', 
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (build)=>SelectContact()));
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
  itemCount: chat.length,
  itemBuilder: (context, index) => CustomCard(
    key: Key('customCard_$index'), // Provide a unique key for each CustomCard
    chatModel: chat[index],
  ),
),
    );
  }
}