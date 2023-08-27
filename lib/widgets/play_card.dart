import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class playcard extends StatelessWidget {
  final String photo;
  final String name;
  final String art;

  const playcard(
      {super.key, required this.photo, required this.name, required this.art});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Padding(
              padding:
              const EdgeInsets.only(right: 10),
              child: Container(
                width: 130.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage(
                        photo),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)),
                ),
              )),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: GoogleFonts.varela(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    )),
                SizedBox(
                  height: 3,
                ),
                Text(art,
                    style: GoogleFonts.varela(
                        color: Colors.white
                            .withOpacity(0.5),
                        fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    );

  }
}