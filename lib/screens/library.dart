import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/screens/profile.dart';
import '../consts/media_query.dart';
import '../dataa.dart';
import 'music_screen.dart';

class like extends StatefulWidget {
  const like({super.key});

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  Future openBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: false,
      backgroundColor: Colors.grey[900],
      elevation: 5,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 5),
          children: const [
            Center(
                child: Icon(
                  FluentIcons.line_horizontal_1_20_filled,
                  size: 27,
                  color: Colors.white24,
                )),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: Center(
                child: Text(
                  'Create',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                FluentIcons.music_note_2_20_regular,
                color: Colors.white54,
                size: 28,
              ),
              title: Text(
                'Playlist',style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Add songs to a new playlist',
                style: TextStyle(fontSize: 12,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ListTile(
            //   leading: Icon(
            //     FluentIcons.sound_wave_circle_20_regular,
            //     color: Colors.white54,
            //     size: 28,
            //   ),
            //   title: Text(
            //     'Blend',
            //   ),
            //   subtitle: Text(
            //     'Combine tastes in a shared playlist with friends',
            //     style: TextStyle(fontSize: 12),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 22, 22, 22),
            elevation: 5,
            centerTitle: false,

            //toolbarHeight: screenHeight * 0.11,
            forceElevated: true,
leading: Text(""),
leadingWidth: 0,
            title: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children:  [
                  Bounceable(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => profile(),
                          ));
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage:AssetImage("assets/profile.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Your Library',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            pinned: true,
            actions: [
              Bounceable(
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  onTap: () {
                    CupertinoSearchTextField(
                      itemColor: Colors.white,
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.6)),
                      backgroundColor: Colors.white12,
                    );
                  },
                  child: const Icon(FluentIcons.search_20_regular)),
              SizedBox(
                width: 10,
              ),
              Bounceable(
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  onTap: openBottomSheet,
                  child: const Icon(FluentIcons.add_20_regular)),
              SizedBox(
                width: 10,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size(70, 60),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10, bottom: 10),
                child: Row(
                  children: [
                    Bounceable(
                      onTap: () {},
                      child: Chip(
                        backgroundColor: Colors.black87,
                        label: const Text('Playlists'),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Bounceable(
                      onTap: () {},
                      child: Chip(
                        backgroundColor: Colors.black26,

                        label: const Text('Liked'),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width:10,
                    ),
                    Bounceable(
                      onTap: () {},
                      child: Chip(
                        backgroundColor: Colors.black87,
                        label: const Text('Artists'),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                // SizedBox(
                //   height: 30,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Row(
                //     children: [
                //       Container(
                //         height: 50,
                //         width: 250,
                //         child: CupertinoSearchTextField(
                //           controller: TextEditingController(text: 'search here'),
                //           itemColor: Colors.white,
                //           style: GoogleFonts.poppins(
                //               color: Colors.white.withOpacity(0.6)),
                //           backgroundColor: Colors.white12,
                //         ),
                //       ),
                //       SizedBox(
                //         width: 17,
                //       ),
                //       SizedBox(
                //         width: 70,
                //         height: 50,
                //         child: TextButton(
                //             style: ButtonStyle(
                //                 backgroundColor:
                //                     MaterialStatePropertyAll(Colors.white12)),
                //             onPressed: () {},
                //             child: Text(
                //               "Sort",
                //               style: GoogleFonts.poppins(color: Colors.white),
                //             )),
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: getWidth(140)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liked Songs",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "4 songs",
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.downloading_outlined,
                          color: Colors.white, size: 30),
                      SizedBox(
                        width: 190,
                      ),
                      Icon(Icons.shuffle, color: Colors.white, size: 30),
                      Icon(Icons.play_circle, color: Colors.green, size: 70),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      width: 360,
                      child: ListView.builder(
                        shrinkWrap: false,
                        physics: PageScrollPhysics(),
                        itemCount: top.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Musicss(
                                          photo: pro[index].photo,
                                          text: pro[index].textt,
                                          art: pro[index].art, closeOpen: () {  },),));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: getHeight(10)),
                              child: ListTile(
                                leading: Container(
                                  height: 100.0,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(pro[index].photo),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                title: Text(pro[index].textt,
                                    style: TextStyle(color: Colors.white)),
                                subtitle: Text(pro[index].art,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.5))),
                                trailing: Container(
                                  width: getWidth(100),
                                  child: Row(children: <Widget>[
                                    SizedBox(
                                      width: getWidth(40),
                                    ),
                                    Icon(Icons.favorite, color: Colors.green),
                                    SizedBox(
                                      width: getWidth(10),
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
