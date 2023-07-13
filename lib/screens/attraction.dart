import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/screens/data.dart';

import 'detailpage.dart';
import 'historydetailPage.dart';
import 'historygrid.dart';
import 'nature.dart';
class attraction extends StatelessWidget {
  var index=0;
   attraction({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nature',style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'times new roman',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NaturePage(
                        nature:nature[index]['img'],
                    )));
                  }, icon: Icon(CupertinoIcons.arrow_right))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: nature.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(
                          nature:nature[index]['img'],
                          name:nature[index]['name'],
                          place:nature[index]['place']
                        ),));
                      },
                      child: Card(
                        shadowColor: Colors.grey,
                        color: Colors.white,
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage('assets/${nature[index]['img']}',),
                                        fit: BoxFit.cover )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('${nature[index]['name']}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                    fontFamily: 'Times new roman'

                                ),),
                              Text('${nature[index]['place']}')
                            ],
                          ),

                        ),

                      ),
                    );
                  },



                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History',style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'times new roman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryGridPage()));
                  }, icon: Icon(CupertinoIcons.arrow_right))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>historydetailPage(
                    img:history[index]['img'],
                    name:history[index]['name'],
                    place:history[index]['place'],
                  )));
                },
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: history.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) {
                      return  Card(
                        shadowColor: Colors.grey,
                        color: Colors.white,
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage('assets/${history[index]['img']}',)
                                        ,fit: BoxFit.cover )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('${history[index]['name']}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                    fontFamily: 'Times new roman'

                                ),),
                              Text('${history[index]['place']}'),
                            ],
                          ),

                        ),

                      );
                    },



                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Religious',style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'times new roman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  IconButton(onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>NaturePage(
                    //   religion:travel[index]['religion'],
                    // )));
                  }, icon: Icon(CupertinoIcons.arrow_right))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: religion.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return  Card(
                      shadowColor: Colors.grey,
                      color: Colors.white,
                      child: Container(
                        height: 170,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage('assets/${religion[index]['img']}',)
                                      ,fit: BoxFit.cover )
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('${religion[index]['name']}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                  fontFamily: 'Times new roman'

                              ),),
                            Text('${religion[index]['place']}')
                          ],
                        ),

                      ),

                    );
                  },



                ),
              ),
            ),

          ],

    ),
      )
    );
  }
}
