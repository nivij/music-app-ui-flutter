

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switch1 extends StatefulWidget {

  const Switch1({super.key});

  @override
  State<Switch1> createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool buttons = false ;
  @override
  Widget build(BuildContext context) {
    return
      Switch(
        activeColor: Colors.green,
        inactiveTrackColor: Colors.white,
        value: buttons,
        onChanged: (bool ison) {
          setState(() {
            buttons = ison;
          });
        },
      );
  }
}
