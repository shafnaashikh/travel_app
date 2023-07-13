import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:travelapp/screens/data.dart';

import 'historydetailPage.dart';
class HistoryGridPage extends StatefulWidget {
   HistoryGridPage({Key? key}) : super(key: key);

  @override
  State<HistoryGridPage> createState() => _HistoryGridPageState();
}

class _HistoryGridPageState extends State<HistoryGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('History'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemCount: history.length,

          itemBuilder: (context,index){
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>historydetailPage(
                      img:history[index]['img'],
                      name:history[index]['name'],
                      place:history[index]['place']
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
                        Text('${history[index]['place']}')
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
