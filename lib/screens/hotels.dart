import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:travelapp/screens/data.dart';
class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('  Find a place to stay..',textAlign: TextAlign.start,
              style: TextStyle(
              color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times new roman'
              ),),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: hotel.length,
                itemBuilder: (context,index) {
                  var count=hotel[index]['star'];


                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        height: 240,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0.6,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.normal,
                          )],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('${hotel[index]['hotel']}',),fit: BoxFit.cover
                                  )
                              ),
                              // color: Colors.teal,
                            ),
                            SizedBox(height: 2,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text('${hotel[index]['honame']}', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                        fontFamily: 'Times new roman'
                                    ),),
                                    Text('Consectetur,adipiscing elita'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('\$${hotel[index]['rate']}',style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                        fontFamily: 'Times new roman'
                                    ),),
                                    Text('Per night'),
                                  ],
                                ),

                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 250, ),
                              child: Container(
                                height: 50,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context,index){

                                      return (index<count)?Icon(Icons.star,
                                          color: Colors.amber,):Icon(Icons.star,);

                                    }
                                ),
                              ),
                            )
                              // children: [
                              //
                              //   Icon(Icons.star,
                              //     color: Colors.amber,),
                              //   Icon(Icons.star,
                              //     color: Colors.amber,),
                              //   Icon(Icons.star,
                              //     color: Colors.amber,),
                              //   Icon(Icons.star,
                              //     color: Colors.amber,),
                              //   Icon(Icons.star_half,
                              //     color: Colors.amber[400],),
                              // ],

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
