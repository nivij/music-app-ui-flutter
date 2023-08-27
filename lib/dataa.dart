import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/modelc.dart';

List<Photo> photo = [
  Photo(name: 'assets/follow/kanye.png', text: 'Kayne'),
  Photo(name: 'assets/follow/adele.jpg', text: 'Adele'),
  Photo(name: 'assets/follow/imagine.jpg', text: 'Imagine Dragons'),
  Photo(name: 'assets/follow/weekend.jpg', text: 'Weekend'),
  Photo(name: 'assets/follow/arctic.jpg', text: 'Arctic Monkey'),
  Photo(name: 'assets/follow/post.png', text: 'Post Malone')
];
List<Pro> pro = [
  Pro(
      photo: 'assets/recent/justin.png',
      textt: 'What do you..',
      art: 'Justin Bieber'),
  Pro(photo: 'assets/recent/ella.png', textt: 'Ghost', art: 'Ella Henderson'),
  Pro(photo: 'assets/recent/starboy.png', textt: 'Starboy', art: 'Weekend'),
  Pro(
      photo: 'assets/recent/sumflower.jpg',
      textt: 'Sunflower',
      art: 'Post Malone'),
  Pro(photo: 'assets/recent/bank.jpg', textt: 'Bank account', art: '21 Savage'),
  Pro(photo: 'assets/recent/evo.jpg', textt: 'Evolve', art: 'Imagine Dragons'),

];
List<Top> top = [
  Top(
    type: 'good',
      leading: 'assets/top_play/goodmor.jpg',
      title: 'Good morning',
      songs: [
        'assets/recent/bank.jpg',
        'assets/recent/ella.png',
        'assets/playlist/ok.jpg'
      ],
      artist: [
        '21 Savage',
        'Ella Henderson',
        'OK Go'
      ],
      Sub: 'By nivij',
      name: ['Bank Account',
        'Ghost',
        'This Too Shall Pass']
  ),
  Top(
    type: 'tamil',
      leading: 'assets/top_play/tamil.jpg',
      title: 'Latest Tamil',
      songs: [
        'assets/playlist/naa.jpg',
        'assets/playlist/varisu.jpg',
        'assets/playlist/jailer.jpg'
      ],
      artist: [
        'Anirudh Ravichander',
        ' K. S Chithra',
        'Anirudh Ravichander'
      ],
      Sub: 'By Spotify',
      name: ['Naa ready',
        'Soul of Varisu',
        'Jujubee']
  ),
  Top(
    type: 'bollywood',
      leading: 'assets/top_play/india.jpg',
      title: 'Latest Bollywood',
      songs: [
        'assets/playlist/tooh.jpg',
        'assets/playlist/bom.jpg',
        'assets/playlist/queen.jpg'
      ],
      artist: [
        'Mika Singh',
        'Jasmin Walia',
        'Labh Janjua'
      ],
      Sub: 'By unknown',
      name: ['Tooh',
        'Bom Diggy Diggy',
        ' London Thumakda']
  ),
  Top(
    type: 'english',
      leading: 'assets/top_play/eng.jpg',
      title: 'English club',
      songs: [
        'assets/playlist/beauty.jpg',
        'assets/playlist/lovely.jpg',
        'assets/playlist/break.jpg'
      ],
      artist: [
        'Christina Aguilera',
        'Bill Withers',
        'Beyoncé',

      ],
      Sub: 'By unknown',
      name: ['Beautiful',
        'Lovely Day',
        'Break My Soul']
  ),
];

List<Playlist> play = [
  Playlist(
      photo: 'assets/playlist/beauty.jpg',
      name: 'Beautiful',
      arti: 'Christina Aguilera'),
  Playlist(
      photo: 'assets/playlist/brave.jpg',
      name: 'Brave',
      arti: 'Sara Bareilles'),
  Playlist(
      photo: 'assets/playlist/break.jpg',
      name: 'Break My Soul',
      arti: 'Beyoncé'),
  Playlist(
      photo: 'assets/playlist/lovely.jpg',
      name: 'Lovely Day',
      arti: 'Bill Withers'),
];
List<Perfect> perfect = [
  Perfect(
      photo: "assets/stack/li2.png",
      text: "FLY THE FALCON",
      Sub: "Discover 87 songs"),
  Perfect(
      photo: "assets/stack/listen1.png",
      text: "MUSIC HEALS",
      Sub: "Discover 100 songs"),
];
List<Browse> browse = [
  Browse(
      photo: "assets/browse/post.jpg",
      texxt: "Made for you",
     ),
  Browse(
      photo: "assets/browse/phonk.jpg",
      texxt: "New release",
     ),
];
List<Map<String, dynamic>> peopleList = [
  {'img': 'assets/playlist/beauty.jpg', 'title': "Beautiful","arti":"Christina Aguilera"},
  {'img': 'assets/playlist/brave.jpg', 'title': "Beautiful","arti":"Christina Aguilera"},
  {'img': 'assets/playlist/beauty.jpg', 'title': "Beautiful","arti":"Christina Aguilera"},
  {'img': 'assets/playlist/brave.jpg', 'title': "Beautiful","arti":"Christina Aguilera"},
  {'img': 'assets/playlist/beauty.jpg', 'title': "Beautiful","arti":"Christina Aguilera"},

];
List<Coolor> colorr = [
  Coolor(colorr: Colors.green),
  Coolor(colorr: Colors.white),
];
List<Coolorr> coloor = [
  Coolorr(coloor: Colors.red),
  Coolorr(coloor: Colors.orangeAccent),
];
Map nowPlaying = {
  "title": "Sunflower",
  "artists": "Post Malone",
  "album": "",
  "imageUrl":
  "https://res.cloudinary.com/jgarden/image/upload/v1670503242/Spotify%20UI/Album%20Arts/gmomfqbdcz7lmlma8tib.jpg",
  "color": const Color(0xFF372A46),
  "playerColor": const Color(0xFFBD94ED),
  "playerColor2": const Color.fromARGB(255, 151, 127, 180)
};