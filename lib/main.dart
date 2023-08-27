import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/screens/indexpage.dart';








import 'screens/flash_screen.dart';


void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rapid",

      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: flash(),
    );
  }
}

