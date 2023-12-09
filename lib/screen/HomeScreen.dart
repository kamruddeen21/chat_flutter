import 'package:chat_flutter/pages/chatpage.dart';
import 'package:chat_flutter/pages/CameraPage.dart';
import 'package:flutter/material.dart';
class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> with SingleTickerProviderStateMixin{
  late TabController _controller;  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsappChat'),
        actions: [
          IconButton( icon: Icon(Icons.search),
          onPressed: () {},),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
            return[
              PopupMenuItem(child: Text('New groups'),value: 'New groups',),
               PopupMenuItem(child: Text('New broadcast'),value: 'New broadcast',),
                PopupMenuItem(child: Text('Whatsapp web'),value: 'Whatsapp web',),
                 PopupMenuItem(child: Text('Starred massage'),value: 'starred massage',),
                  PopupMenuItem(child: Text('Settings'),value: 'Settings',),
            ];   
          }
        ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
           tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:  const [
          CameraPage(),
          ChatPage(),
          Text('status'),
          Text('calls'),
        ],
      )
    );
  }
}  