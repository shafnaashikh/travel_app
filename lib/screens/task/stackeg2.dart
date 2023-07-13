import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
class stackeg2 extends StatelessWidget {
  const stackeg2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue[700],

            ),
          ),
          Center(
            child: Container(
              height: 250,
              width: 250,
              color: Colors.blue[800],

            ),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue[900],
            ),
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              color: Colors.indigo[900],

            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black54,

            ),
          ),Center(
            child: Container(
              height: 50,
              width: 50,
              color: Colors.black,

            ),
          ),
        ],
      ),
    );
  }
}
