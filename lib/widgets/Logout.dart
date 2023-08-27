import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
                vertical: 15, horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: () {

          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20.0)),

              title: Text("Logging out"),
              titleTextStyle:
              TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,fontSize: 20),
              actionsOverflowButtonSpacing: 20,
              actions: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20.0)),),
                        backgroundColor: MaterialStatePropertyAll(Colors.green)
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Cancel")),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20.0)),),
                        backgroundColor: MaterialStatePropertyAll(Colors.green)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    }, child: Text("Ok")),
              ],
              content: Text("Are You Sure?"),
            );
          });
        },
        child: const Text('Log Out',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)));
  }
}
