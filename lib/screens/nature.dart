import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:travelapp/screens/data.dart';

import 'detailpage.dart';
class NaturePage extends StatefulWidget {




   NaturePage({Key? key,required this.nature, }) : super(key: key);
  var nature;
  @override
  State<NaturePage> createState() => _NaturePageState();
}

class _NaturePageState extends State<NaturePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Nature'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: nature.length,

          itemBuilder: (context,index){
           return  Padding(
             padding: const EdgeInsets.all(8.0),
             child: GestureDetector(
               onTap: ()
               {
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
                                image: AssetImage('assets/${nature[index]['img']}',)
                                ,fit: BoxFit.cover )
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
             ),
           );
          }),
    );
  }
}
