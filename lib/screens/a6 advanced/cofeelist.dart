import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

import 'a4b.dart';
import 'coffee.dart';
class coffeeListPage extends StatelessWidget {
  const coffeeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.search,size: 20,),
                          label: Text('search your coffee'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
                    ),
                  ),
              Container(
                height: 390,

                child: ListView.builder(
                    itemCount:3,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>detailPageadvanced(
                              img:coffee[index]['img'],
                              name:coffee[index]['name'],
                              rate:coffee[index]['rp'],

                            ),));
                          },
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            // color: Colors.grey,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/${coffee[index]['img']}'),fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurStyle: BlurStyle.normal,
                                            blurRadius: 0.2,
                                          )]
                                    ),
                                  ),
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 3,),
                                    Text('${coffee[index]['name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),),
                                    Text('Espresso with ${coffee[index]['item']}..' ,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey
                                      ),),
                                    SizedBox(height: 16,),
                                    Text('Rp ${coffee[index]['rp']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),)
                                  ],
                                ),

                                Center(child: Icon(Icons.add_box_rounded, color: Color(0xffECA996),)),
                              ],
                            ),

                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
