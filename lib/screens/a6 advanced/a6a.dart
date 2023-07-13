import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'cofeelist.dart';
import 'coffee.dart';
import 'coffeeBottom.dart';
class C_Page extends StatelessWidget {
  const C_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/coffeebg.jpg'),fit: BoxFit.cover
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('It\'s Great',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                        Text(' Day for',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Coffee',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.align_horizontal_left,color: Colors.white,),
            ),

            // Positioned(
            //   top: 150,
            //   child: Container(
            //     height: 250,
            //     width: MediaQuery.of(context).size.width,
            //     color: Colors.red,
            //
            //   ),
            // )
            Positioned(
              top: 270,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 510,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),

                    )
                ),
                child: CoffeeBottom()

              ),
            ),

          ],
        ),
      ),

    );

  }
}
