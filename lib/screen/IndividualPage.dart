import 'package:chat_flutter/Model/ChatModel.dart';
import 'package:flutter/material.dart';



class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);

  final ChatModel chatModel;
  


  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  get children => null;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 70,
        titleSpacing: 0,
        leading:InkWell (
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Icon(
              Icons.arrow_back,
            size: 25,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
            )
          ],),
        ),
        title: InkWell(
          onTap: () {},
          child: Container( 
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text
                (widget.chatModel.name
                ),
                Text('last seen today at 12:15',style: TextStyle(
                  fontSize: 13,
                ),),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam),onPressed: () {},),
           IconButton(icon: Icon(Icons.call),onPressed: () {},),
            PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
            return[
              PopupMenuItem(child: Text('View Cotact'),value: 'View Cotact',),
               const PopupMenuItem(child: Text('Media,Link,and Doc'),value: 'Media,Link,and Doc',),
                const PopupMenuItem(child: Text('Whatsapp web'),value: 'Whatsapp web',),
                 const PopupMenuItem(child: Text('Search'),value: 'Search',),
                  PopupMenuItem(child: Text('Mute Notification '),value: 'Mute Notification ',),
                   PopupMenuItem(child: Text('Wallpaper'),value: 'Wallpaper',),
            ];   
          }
        ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-60,
                          child: Card(
                            margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type a message',
                                prefixIcon: IconButton(
                                   icon: Icon(
                                    Icons.emoji_emotions
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        bool _showEMoji =false;
                                        _showEMoji = !_showEMoji;
                                      });
                                    },
                                    ),
                                    suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton( icon: Icon(Icons.attach_file),
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                           builder:(builder)=>bottomsheet()
                                           );
                                        },),
                                        IconButton( icon: const Icon(Icons.camera_alt),
                                        onPressed: () {},),
                                      ],
                                    ),
                              contentPadding: const EdgeInsets.all(5),  
                              ),
                            )),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 2,left: 5),
                          child: CircleAvatar(radius: 25,
                          backgroundColor: Colors.green,
                            child: IconButton(icon: const Icon(
                              Icons.mic,color: Colors.white,),onPressed: () {},),
                          ),
                        ),
                      ],
                    ),
                
                  ],
                ),
                )
            
          ],
        ),
      ),
    );
  }
  Widget bottomsheet(){
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(19),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                iconCreation(   Icons.insert_drive_file,Colors.indigo,'Document'),
                const SizedBox(
                  width: 50,
                ),
                iconCreation(   Icons.camera_alt,Colors.red,'Camera'),
                const SizedBox(
                  width: 50,
                ),
                iconCreation(   Icons.insert_photo,Colors.purple,'Gallery'),
                const SizedBox(
                  width: 50,
                ),
              ],),
              const SizedBox(
                height: 30,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                iconCreation(   Icons.person,Colors.blue,'Contact'),
                const SizedBox(
                  width: 50,
                ),
              
                iconCreation(   Icons.headset,Colors.orange,'Audio'),
                const SizedBox(
                  width: 50,
                ),
                iconCreation(   Icons.location_pin,Colors.teal,'Location'),
              
              ],),
            ]),
          ),
        
      ),
    );
  }
Widget iconCreation(IconData icon, Color color, String text) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color, // Set the background color
          child: Icon(
            icon,
            size: 30,
            color: Colors.white, // Set the icon color to white
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
          ),
        ), // Use the dynamic 'text' parameter here
      ],
    ),
  );
}
 
  
}