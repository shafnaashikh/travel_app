import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class stackeg1 extends StatelessWidget {
  const stackeg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Stack Over Flow')),
        actions: [
          Icon(Icons.navigate_next)

        ],
      ),
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Text('Maria Elliot',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),),
                      SizedBox(height: 10,),
                      Text('Albany,Newyork',
                      style: TextStyle(
                        color: Colors.blue
                      ),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              Text('Purchased'),
                              Text('12k', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),

                            ],
                          ),

                          Column(
                            children: [
                              Text('Wished'),
                              Text('12k', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ],
                          ),

                          Column(
                            children: [
                              Text('Liked'),
                              Text('12k', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ],
                          )
                        ],
                      ),


                    ],
                  ),

                ),

              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 215),
              child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37)
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person, color: Colors.black,
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
