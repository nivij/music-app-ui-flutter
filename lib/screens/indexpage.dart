import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/dataa.dart';
import 'package:musicapp/screens/music_screen.dart';
import 'package:musicapp/screens/playlist.dart';
import 'package:musicapp/screens/profile.dart';
import 'package:musicapp/screens/setting.dart';
import 'package:musicapp/utils/timeRange.dart';
import 'package:musicapp/widgets/play_card.dart';

import '../modelc.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(

              toolbarHeight: 50,
              backgroundColor: Colors.black,
              floating: true,
              snap: true,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(  TimeRange().checkRange(),
                      style: GoogleFonts.varela(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              leadingWidth: 250,
            actions: [
              Bounceable(
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  onTap: () {},
                  child: const Icon(FluentIcons.alert_20_regular)),
              SizedBox(
                width: 20,
              ),
              Bounceable(
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  onTap: () {},
                  child: const Icon(FluentIcons.history_20_regular)),
              SizedBox(
                width: 20,
              ),
              Bounceable(
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const setting(),
                        ));
                  },
                  child: const Icon(FluentIcons.settings_20_regular)),
              SizedBox(
                width: 10,
              )
            ],
               bottom: PreferredSize(
                 preferredSize: Size(50, 48),
                 child: Padding(
                   padding: EdgeInsets.only(left:20),
                   child: Row(
                       children: [
                       Bounceable(
                       onTap: () {},
                   child: Chip(
                     backgroundColor: Colors.black87,
                     label: const Text('Music'),
                     labelStyle: TextStyle(
                         fontWeight: FontWeight.w400,
                         fontSize: 15,color: Colors.white),
                   ),
                 ),SizedBox(
                           width: 20,
                         ),
                         Bounceable(
                           onTap: () {},
                           child: Chip(
                             backgroundColor: Colors.black87,
                             label: const Text('Podcasts & Shows'),
                             labelStyle: TextStyle(
                                 fontWeight: FontWeight.w400,
                                 fontSize: 15,color: Colors.white),
                           ),
                         )
                       ],
                   ),
                 ),
               ),
              centerTitle: true,
            )
          ],
          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [


                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Followed Artist",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //followed artist
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 126,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: photo.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: CircleAvatar(
                                        radius: 41,
                                        backgroundImage: AssetImage(
                                          photo[index].name,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(photo[index].text,
                                        style: GoogleFonts.varela(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900))
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  //followed artist

                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Text("Recently Played",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    trailing: Text("See all >",
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.3),
                            fontSize: 14)),
                  ),

                  //Recently Played

                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 223,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: pro.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Musicss(
                                            photo: pro[index].photo,
                                            text: pro[index].textt,
                                            art: pro[index].art, closeOpen: () {  },),
                                      ));
                                },
                                child: playcard(photo: pro[index].photo, name: pro[index].textt, art: pro[index].art)
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Recently Played

                  ListTile(
                    leading: Text("Top Daily Playlist",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    trailing: Text("See all >",
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.3),
                            fontSize: 14)),
                  ),

                  Container(
                    height: 500,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: top.length,
                      itemBuilder: (context, index) {
                        final value1=top[index];
                        return InkWell(
                          onTap: () {



                              if (top[index].type == 'good') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlayListt(top:value1),
                                    ));
                              } else if (top[index].type == 'tamil') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlayListt(top:value1),
                                    ));
                              }else if (top[index].type == 'bollywood') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlayListt(top:value1),
                                    ));
                              }else if (top[index].type == 'english') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlayListt(top:value1),
                                    ));
                              }


                            // print(PlayList(index: index, result: [top[index],play[index]],).result);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              selected: selectedIndex == index,
                              leading: Container(
                                height: 100.0,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(top[index].leading),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              title: Text(top[index].title,
                                  style: TextStyle(color: Colors.white)),
                              subtitle: Text(top[index].Sub,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5))),
                              trailing: Icon(Icons.playlist_add_check_circle,
                                  color: Colors.green),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
