import 'package:flutter/material.dart';
class stackeg3 extends StatelessWidget {
  const stackeg3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            height: 250,
            width: 250,
            color: Colors.blue[700],
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue[900],
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.indigo[700],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.indigo[900],
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
