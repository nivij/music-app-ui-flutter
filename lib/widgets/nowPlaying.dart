import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';


import '../dataa.dart';
import '../screens/bottom_menu.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({
    Key? key,
    required this.closeOpen,
  }) : super(key: key);
  final VoidCallback closeOpen;

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool isLiked = false;
  bool fullPlayer = false;
  bool offStage = false;

  void nowPlayingMethod() {
    setState(() {
      fullPlayer = !fullPlayer;
      offStage = !offStage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop:(){ return Future.value(false);},



      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(stops: const [
              0.4,
              //0.4,
              1
            ], colors: [
              nowPlaying["playerColor2"],
              //nowPlaying["playerColor"],
              Colors.black.withOpacity(0.00001)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Scaffold(
          //backgroundColor: nowPlaying["playerColor"],
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {

                widget.closeOpen();
              },
              icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white),
            ),
            title: Text(
              nowPlaying['album'],
              style: const TextStyle(fontSize: 14, color: Colors.white70),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert,color: Colors.white,))
            ],
          ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.asset("assets/recent/sumflower.jpg",fit: BoxFit.cover),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 20),
                          child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                nowPlaying["title"],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              subtitle: Text(
                                nowPlaying["artists"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white60),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isLiked = !isLiked;
                                  });
                                },
                                icon: isLiked
                                    ? const Icon(
                                  Icons.favorite,
                                  color: Colors.greenAccent,
                                )
                                    : const Icon(Icons.favorite_border_outlined,color: Colors.green),
                              )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SliderTheme(
                            data: const SliderThemeData(
                                trackHeight: 3,
                                thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 6)),
                            child: Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.white30,
                              divisions: 100,
                              value: 20,
                              onChanged: (value) {},
                              min: 0,
                              max: 100,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Expanded(
                                  child: Text(
                                    "0:40",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white54),
                                  ),
                                ),
                                Text(
                                  "-2:41",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white54),
                                )
                              ],
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.shuffle,color: Colors.white,)),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                  const Icon(Icons.skip_previous,color: Colors.white),
                                  iconSize: 28,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.play_circle,color: Colors.white),
                                  iconSize: 70,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.skip_next,color: Colors.white),
                                  iconSize: 28,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.repeat,color: Colors.white,))
                              ],
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 20),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .on_device_training,color: Colors.white,)),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.ios_share_outlined,color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.view_list,color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
