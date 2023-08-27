import 'dart:io';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musicapp/screens/indexpage.dart';
import 'package:musicapp/screens/setting.dart';
import 'package:musicapp/widgets/nowPlaying.dart';


import 'library.dart';
import '../dataa.dart';
import 'discover.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BaseState();
}

class _BaseState extends State<Bottom> {
  int currentIndex= 0;

  List<Widget> mainBodies = [const pageone(), const discover(), const like()];

  void changeTab(int index) {
    setState(() {
      currentIndex =index;
    });
  }

  bool fullPlayer = false;
  bool offStage = false;

  void nowPlayingMethod() {
    setState(() {
      fullPlayer = !fullPlayer;
      offStage = !offStage;
    });
  }

    var ctime;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: WillPopScope(

        child: Container(
          color: Colors.lightBlue,
          child: Stack(
            children: [
              mainBodies[currentIndex],
              // Bottom Navigation Bar
              Offstage(
                offstage: offStage,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: const Duration(milliseconds: 400),
                    height: screenHeight * 0.11,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.99),
                          Colors.black
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.0, 0.3, 0.7],
                      ),
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: BottomNavigationBar(
                        currentIndex:  currentIndex,
                        elevation: 0,
                        enableFeedback: true,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.transparent,
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.white70,
                        onTap: (index) {
                          changeTab(index);
                        },
                        items: const [
                          BottomNavigationBarItem(
                              icon: Icon(FluentIcons.home_20_regular),
                              activeIcon: Icon(FluentIcons.home_20_filled,color: Colors.green),
                              label: 'Home'),
                          BottomNavigationBarItem(
                              icon: Icon(FluentIcons.search_20_regular),
                              activeIcon: Icon(FluentIcons.search_12_filled,color: Colors.green),
                              label: 'Search'),
                          BottomNavigationBarItem(
                              icon: Icon(FluentIcons.library_20_regular),
                              activeIcon: Icon(FluentIcons.library_20_filled,color: Colors.green),
                              label: 'Your Library'),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: !fullPlayer ? 98 : 0,
                  left: !fullPlayer ? 10 : 0,
                  right: !fullPlayer ? 10 : 0,
                  child: GestureDetector(
                    onTap: () {
                      nowPlayingMethod();

                    },
                    child: AnimatedContainer(

                        duration: const Duration(milliseconds: 800),
                        curve: Curves.fastOutSlowIn,
                        width: !fullPlayer ? screenWidth * 0.9 : screenWidth,
                        height: !fullPlayer ? screenHeight * 0.08: screenHeight,
                        decoration: BoxDecoration(
                            color: nowPlaying["color"],
                            borderRadius: fullPlayer
                                ? BorderRadius.circular(0)
                                : BorderRadius.circular(10)),
                        child: fullPlayer
                            ? Offstage(
                            offstage: !offStage,
                            child: NowPlaying(

                              closeOpen: (){
                               return nowPlayingMethod();
                              }

                            ))
                            : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 5,
                                      top: 8,
                                      bottom: 3),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        "assets/recent/sumflower.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      nowPlaying['title'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.005,
                                    ),
                                    Text(
                                      nowPlaying['artists'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white54,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .devices,color: Colors.green,)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                       Icons.play_arrow_rounded,color: Colors.white,))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: LinearProgressIndicator(
                                value: 0.2,
                                minHeight: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white),
                              ),
                            ),
                          ],
                        )),
                  )),
            ],
          ),
        ),

          onWillPop: () {

           DateTime now = DateTime.now();
              if (ctime == null || now.difference(ctime) > Duration(seconds: 1)) {
               //add duration of press gap
               ctime = now;

              ScaffoldMessenger.of(context).showSnackBar(

                    SnackBar(
                      backgroundColor: Colors.black,
                        duration:  Duration(seconds: 1),
                        content: Text('Press Back Button Again to Exit'))
               ); //scaffold message, you can show Toast message too.
             return Future.value(false);
    }
           return Future.value(true);
          },
      ),
    );
  }
}
