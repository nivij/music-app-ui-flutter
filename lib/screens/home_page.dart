import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/consts/media_query.dart';
import 'package:musicapp/screens/bottom_menu.dart';
import 'package:musicapp/screens/indexpage.dart';

import 'login.dart';



class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    SizeConfigs().init(context);
    return Scaffold(

      backgroundColor: Color(0xff000000),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400,

                child: ShaderMask(
                  child: Image.asset(
                    "assets/1stback.jpg",
                    height: getHeight(430),
                    width: getWidth(430),
                    fit: BoxFit.cover,

                  ),
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black38, Color(0xff000000)],
                      stops: [0,13],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.darken,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Millions Of Music",
                style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                child: Text(
                  "Be the first to discover,play and share your favorite tracks from emerging artists.",
                  style: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 60,),
               GestureDetector(
                 onTap: () {
                   BoxDecoration(
                     color: Colors.white,
                   );
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                 },
                   child: Icon(Icons.play_circle_filled_rounded,color: Colors.green,size: 80,))

            ],
          ),
        ),
      ),
    );
  }
}
