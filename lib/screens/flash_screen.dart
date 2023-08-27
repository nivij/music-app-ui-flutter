import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/consts/media_query.dart';

import 'home_page.dart';


class flash extends StatefulWidget {
  const flash({super.key});

  @override
  State<flash> createState() => _flashState();
}

class _flashState extends State<flash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Time();
  }

  void Time(){
    Timer(Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Image.asset("assets/flash.gif",height: getHeight(500)),

            ),
          ),
          Text("Rapid",style:GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
        ],
      ),
      
    );
  }
}
