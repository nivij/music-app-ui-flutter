import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/dataa.dart';
import 'package:musicapp/widgets/playview.dart';
import '../modelc.dart';
import 'music_screen.dart';

class PlayListt extends StatelessWidget {


   final  top;
  // final PlayList tops;

   PlayListt({
    Key? key,
     required this.top,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int index = 0;
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(top.leading,
                      width: 250, height: 260, fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    top.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    top.Sub,
                    style: TextStyle(
                        fontSize: 18, color: Colors.white.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => Musicss(
                            //   text: play[index].name,
                            //   photo: play[index].photo,
                            //   art: play[index].arti, closeOpen: () {  },
                            //       )));
                          },
                          child: Container(
                            width: 150,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Play All",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.play_arrow_rounded, size: 40),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => Musicpage()));
                          },
                          child: Container(
                            width: 150,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color(0xff30314D),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Shuffle",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.shuffle_rounded,
                                    size: 40, color: Colors.white),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 340,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: top.songs.length,
                  itemBuilder: (context, index) {

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Musicss(
                                    text:top.name[index],
                                    photo: top.songs[index],
                                    art:top.artist[index], closeOpen: () {  },
                                  )));
                        },
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                             child:


                              playview( photo: top.songs[index],
                                name: top.name[index], art: top.artist[index],
                                // art: play[index].arti,
                              )
                        ),


                      );



                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
