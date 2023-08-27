import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class playview extends StatelessWidget {
  final String photo;
  final String name;
  final String art;

 playview({super.key, required this.photo,
   required this.name,
    required this.art,
 });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 100.0,
        width: 60,
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(photo),
            fit: BoxFit.cover,
          ),
          borderRadius:
          BorderRadius.all(Radius.circular(10)),
        ),
      ),


      title: Text(name,
          style: TextStyle(color: Colors.white)),
      subtitle: Text(art,
           style: TextStyle(
               color: Colors.white.withOpacity(0.5))),
      trailing: Icon(Icons.play_circle_outline_rounded,
          color: Colors.green, size: 30),
    );
  }
}
