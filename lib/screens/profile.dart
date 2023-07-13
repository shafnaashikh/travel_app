import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:travelapp/screens/data.dart';
class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:
            [
              Container(
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('assets/prbk.jpg'),fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 140),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                  radius: 55,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/monicca.jpg',),

                )),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 130, top: 130),
              //   child: ClipOval(
              //     child: Container(
              //       width: 180,
              //       height: 180,
              //       color: Colors.white,
              //       child: CircleAvatar(
              //         radius: 10,
              //
              //       ),
              //       // child: ClipOval(
              //       //   child: Container(
              //       //     height: 130,
              //       //     width: 130,
              //       //     // color: Colors.blue,
              //       //     decoration: BoxDecoration(
              //       //       image: DecorationImage(
              //       //         image: AssetImage('assets/monicca.jpg',),fit: BoxFit.cover
              //       //       )
              //       //     ),
              //       //
              //       //
              //       //   ),
              //       // ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 265, ),
                child: Column(
                  children: [
                    Text('Monicca Green',style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                          fontFamily: 'Times new roman'
                      ),),
                    Text('monicca@emaple.com', style: TextStyle(
                      fontFamily: 'Times new roman'
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
                        SizedBox(width: 7,),
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart)),
                        SizedBox(width: 7,),
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.photo)),
                        SizedBox(width: 7,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.people_alt)),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: profile.length,
                          itemBuilder: (context,index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipOval(
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/${profile[index]['img']}'),fit: BoxFit.cover,
                                      )
                                    ),

                                    // color: Colors.grey,
                                  ),

                          ),
                                ),
                                Center(child: Text('  ${profile[index]['name']}',style: TextStyle(
                                    fontFamily: 'Times new roman'
                                ),))
                              ],
                            );
                            Text('Chandler');
                            },

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('My Favourite',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                        fontFamily: 'Times new roman'
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: fav.length,
                          itemBuilder: (BuildContext context, int index) {
                            return
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200,
                                  child: Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage('assets/${fav[index]['img']}'),fit: BoxFit.cover
                                        )
                                      ),


                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,

                                      child: Stack(
                                        children: [
                                          Opacity(
                                            opacity: 0.3,
                                            child: Container(
                                              height: 40,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(15),
                                                  bottomLeft: Radius.circular(15),
                                                )
                                              ),


                                            ),
                                          ),
                                          Container(
                                            width: 140,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(' ${fav[index]['name']}',style: TextStyle(
                                                  color: Colors.white,
                                                    fontFamily: 'Times new roman',
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),),
                                                Icon(CupertinoIcons.heart_fill,color: Colors.red,)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                            ),
                                ),
                              );
                          },

                      ),
                    )
                  ],
                ),
              )
            ],

        ),

      ),
    );
  }
}

