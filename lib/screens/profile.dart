import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dataa.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Colors.white.withOpacity(0.6),
    Colors.black.withOpacity(0.9)
    ])),
    child: Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(
    child: SingleChildScrollView(
    child: Column(
    children: [
    Padding(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
    child: Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    InkWell(
    onTap: () {
    Navigator.pop(context);
    },
    child: Icon(
    CupertinoIcons.back,
    color: Colors.white,
    size: 30,
    )),
    InkWell(
    onTap: () {
    // Navigator.pop(context);
    },
    child: Row(

      children: [
        SizedBox(width: 100,),
        Text("Profile",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    ))
    ],
    ),
    ),
    SizedBox(height: 10,),
    Container(
    child: CircleAvatar(
      radius: 60,
       backgroundImage: AssetImage("assets/profile.png"),

    ),
    ),
    SizedBox(
    height: 30,
    ),
    Column(
    children: [
    Text(
     "Nivij",
    style: TextStyle(
    color: Colors.white,
    fontSize: 23,
    fontWeight: FontWeight.bold),
    ),
    SizedBox(
    height: 8,
    ),

    SizedBox(
    height: 10,
    ),


      Container(

        height: 38,
          width: 120,

        child: InkWell(


          onTap: () {


          },
          child:  Container(
          // width: 40,
          // height: 50,
           decoration: BoxDecoration(
             border: Border.all(width: 2,color: Colors.white.withOpacity(0.2)),

              borderRadius: BorderRadius.circular(18),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Edit Profile",
                  style: TextStyle(
                      color: Colors.green, fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        )
      )
    ],

    ),
      SizedBox(height: 10,),
      Card(
        shadowColor: Colors.white10.withOpacity(0.1),
      margin: EdgeInsets.symmetric(vertical: 10),

        elevation: 3,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white10.withOpacity(0.1),
          ),
            borderRadius: BorderRadius.circular(20)
        ),
        color: Colors.black,

        child:SizedBox(
          height: 80,
            width: 600,

          child: Padding(

            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(

                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("742",style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.8))),
                    SizedBox(height: 3,),
                    Text("Fav Song",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600)),
                  ],
                ),
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("17.8k",style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.8))),
                    SizedBox(height: 3,),
                    Text("Followers",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600)),
                  ],
                ),Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("2.6k",style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.8))),
                    SizedBox(height: 3,),
                    Text("Following",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600)),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      ListTile(
        leading: Text("Personal Playlist",
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
        trailing: Text("See all >",
            style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.3), fontSize: 14)),
      ),
      SizedBox(height: 5,),
      Container(
        height: 340,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: top.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Musicpage(top:top)));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Container(
                    height: 100.0,
                    width: 60,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage(top[index].leading),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  title: Text(top[index].title,
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(top[index].Sub,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5))),
                  trailing: Icon(Icons.done, color: Colors.green,size: 20),
                ),
              ),
            );
          },
        ),
      )
    ],

    ),


    ),
    )
    ),
    );
    }
    }
