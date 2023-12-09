import 'package:flutter/material.dart';
class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

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