import 'package:chat_flutter/screen/HomeScreen.dart';
import 'package:chat_flutter/screen/CameraScreen.dart';
import 'package:flutter/material.dart';


void main() {  
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily:   'OpenSans',
      primaryColor: const Color(0xff075e54),
      accentColor: const Color(0xff128c7e),
    ),
    home: HomeSceen(),
  ));
}

