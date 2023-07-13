import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

import 'data.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                // color: Colors.grey,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home.jpg',),fit: BoxFit.cover
                  ),
                 borderRadius: BorderRadius.only(

                   bottomRight: Radius.circular(100),
                 )

                ),
                child: Column(
                  children: [
                    SizedBox(height: 70,),
                    Text('Where do you want to go ?', style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Times new roman'
                    ),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, right: 33),
                      child: TextField(
                        style: TextStyle(height: 0.1),
                        decoration: InputDecoration(
                          suffixIcon: Icon(CupertinoIcons.search),
                          filled: true,
                          hintText: 'Search',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 3
                            ),
                            borderRadius: BorderRadius.circular(30),
                          )

                        ),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('  Suggestions',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                            fontFamily: 'Times new roman'
                        ),),
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right))
                      ],
                    ),

                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: home.length,
                          itemBuilder: (context,index)
                          {
                        return  Card(
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          child: Container(
                            height: 170,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
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
                                          image: AssetImage('assets/${home[index]['sugg']}',)
                                          ,fit: BoxFit.cover )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('${home[index]['sname']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                      fontFamily: 'Times new roman'

                                  ),),
                                Text('${home[index]['splace']}')
                              ],
                            ),

                          ),

                        );
                      }),
                    ),

                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(' Top Rated',style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times new roman'
                        ),),
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right))
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: home.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shadowColor: Colors.grey,
                            color: Colors.white,
                            child: Container(
                              height: 170,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
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
                                            image: AssetImage('assets/${home[index]['top']}',)
                                            ,fit: BoxFit.cover )
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('${home[index]['tname']}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Times new roman'

                                    ),),
                                  Text('${home[index]['tplace']}')
                                ],
                              ),

                            ),

                          );
                        },

                      ),
                    ),

                  ],
                ),
              ),





            ],
          ),
        ),


      ),


    );
  }
}
