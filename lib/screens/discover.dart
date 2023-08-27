import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../consts/media_query.dart';
import '../dataa.dart';
import 'music_screen.dart';
import '../widgets/play_card.dart';

class discover extends StatelessWidget {
  const discover({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
   return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [
            SliverAppBar(
              toolbarHeight: 50,
              backgroundColor: Colors.black,
              pinned: true,
              floating: true,
              snap: true,
              leadingWidth: getWidth(260),
              leading: Padding(
                padding: EdgeInsets.only(left: getWidth(100)),
                child: Center(
                  child: Text(
                    "Discover",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // title: InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => profile(),
              //         ));
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 23),
              //     child: CircleAvatar(
              //       radius: 26,
              //       backgroundImage: AssetImage(
              //         'assets/profile.png',
              //       ),
              //     ),
              //   ),
              // ),

              bottom: TabBar(
                  indicatorColor: Colors.black.withOpacity(0.3),
                  indicatorWeight: 10,
                  tabs: [
                    CupertinoSearchTextField(
                      itemColor: Colors.white,
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.6)),
                      backgroundColor: Colors.white12,
                    ),
                  ]),
            )
          ],
          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 134),
                      //   child: Text(
                      //     "Discover",
                      //     style: GoogleFonts.poppins(
                      //         color: Colors.white, fontSize: 20),
                      //   ),
                      // ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => profile(),
                      //         ));
                      //   },
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 80),
                      //     child: CircleAvatar(
                      //       radius: 20,
                      //       backgroundImage: AssetImage(
                      //         'assets/profile.png',
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Container(
                  //   height: 50,
                  //   width: 330,
                  //   child: CupertinoSearchTextField(
                  //     itemColor: Colors.white,
                  //     style:
                  //         GoogleFonts.poppins(color: Colors.white.withOpacity(0.6)),
                  //     backgroundColor: Colors.white12,
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: getWidth(230)),
                    child: Text(
                      "Browse All",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(3)),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 2,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 1),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Bounceable(
                          onTap: () {

                          },
                          child: Stack(clipBehavior: Clip.none, children: [
                            SizedBox(
                              width: getWidth(200),
                              height: getHeight(230),
                              child: Card(
                                margin: EdgeInsets.symmetric(
                                    vertical: getHeight(23), horizontal: getWidth(6)),
                                color: coloor[index].coloor,
                                child: Padding(
                                  padding: EdgeInsets.only(right: getWidth(10)),
                                  child: ListTile(
                                    title: Text(browse[index].texxt,
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: getHeight(30),
                              left: getWidth(107),
                              height: getHeight(65),
                              child: Transform.rotate(
                                angle: 25,
                                child: Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(blurRadius: 10.0),
                                    ]),
                                    child: Image.asset(browse[index].photo)),
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: getWidth(178)),
                    child: Text("Perfect For You",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: getWidth(7), left: getWidth(10)),
                    child: Container(
                      height: getHeight(180),
                      width: getWidth(400),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: perfect.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.only(right: getWidth(10)),
                            child: Bounceable(
                              onTap: () {

                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.symmetric(
                                        vertical: getHeight(13)),
                                    child: SizedBox(
                                      width: getWidth(285),
                                      height: getHeight(230),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(19)),
                                        color: colorr[index].colorr,
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Padding(
                                                padding:  EdgeInsets.only(
                                                    right: getWidth(120)),
                                                child: Padding(
                                                  padding:  EdgeInsets
                                                      .symmetric(vertical: getHeight(6)),
                                                  child: Text(
                                                    perfect[index].text,
                                                    style: GoogleFonts.cabin(
                                                        color: Colors.black,
                                                        fontSize: 30,
                                                        fontWeight:
                                                        FontWeight.w900),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              subtitle: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getWidth(10)),
                                                child: Text(
                                                  perfect[index].Sub,
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black12
                                                          .withOpacity(0.5),
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(
                                                  right: getWidth(200)),
                                              child: Icon(
                                                Icons.double_arrow_sharp,
                                                color: Colors.black,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: getHeight(17),
                                    left: getWidth(155),
                                    height: getHeight(169),
                                    child: Image.asset(perfect[index].photo),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text("June Popular Hits",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    trailing: Text("See all >",
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.3),
                            fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
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
                                          builder: (context) =>
                                              Musicss(
                                                text: pro[index].textt,
                                                photo: pro[index].photo,
                                                art: pro[index].art,
                                                closeOpen: () {},),
                                        ));
                                  },
                                  child: playcard(photo: pro[index].photo,
                                      name: pro[index].textt,
                                      art: pro[index].art)
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
