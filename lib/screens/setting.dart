import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/consts/media_query.dart';
import 'package:musicapp/screens/profile.dart';
import 'package:musicapp/widgets/Logout.dart';
import 'package:musicapp/widgets/switch.dart';

import 'login.dart';


class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 5,
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Bounceable(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                      'assets/profile.png'),
                ),
                title: Text('Nivij',style: TextStyle(color: Colors.white)),
                subtitle: Text('View Profile',style: TextStyle(color: Colors.white)),
                trailing: Icon(FluentIcons.chevron_right_20_regular,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 310,
                width: 300,
                decoration: BoxDecoration(

                    color: Colors.white12.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children:[ Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 80,),
                      Text(
                        "Go Pro!",
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Do you want to buy a pro subscription?",
                        style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            GestureDetector(

                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Musicpage(top:top)));
                              },
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("No",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20,
                                            fontWeight: FontWeight.bold)),


                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Musicpage(top:top)));
                              },
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Yes",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20,
                                            fontWeight: FontWeight.bold)),


                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                    Positioned(
                      top: 14,
                      left:104,
                      height: 100,
                      child: Image.asset("assets/logopre.png"),
                    )
                ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:  EdgeInsets.only(right: getWidth(250)),
              child: Text(
                "Data Saver",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
                title: Text("Save Data",
                    style: GoogleFonts.poppins(color: Colors.white)),
                subtitle: Text(
                  "Sets audio quality to low ,and hides canvanses as well as audio & video previews on home",
                  style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.8), fontSize: 10),
                ),
                trailing: Switch1()),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:  EdgeInsets.only(right:getWidth(280)),
              child: Text(
                "Devices",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              title: Text("Connect to a device",
                  style: GoogleFonts.poppins(color: Colors.white)),
              subtitle: Text(
                "Listen to and control on your devices",
                style: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.8), fontSize: 10),
              ),
            ),
            ListTile(
                title: Text("Show local devies only",
                    style: GoogleFonts.poppins(color: Colors.white)),
                subtitle: Text(
                  "Only show devices on your local WiFi or ethernet in the devices menu",
                  style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.8), fontSize: 10),
                ),
                trailing: Switch1()),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: getWidth(290)),
              child: Text(
                "Social",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
                title: Text("Private session",
                    style: GoogleFonts.poppins(color: Colors.white)),
                subtitle: Text(
                  "Temporaily hide your listening activity from your followers",
                  style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.8), fontSize: 10),
                ),
                trailing:Switch1()),
            ListTile(
                title: Text("Download audio",
                    style: GoogleFonts.poppins(color: Colors.white)),
                subtitle: Text(
                  "Save your audio",
                  style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.8), fontSize: 10),
                ),
                trailing:Switch1()),
            SizedBox(height: 20,),
            Logout(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      )),
    );
  }
}
