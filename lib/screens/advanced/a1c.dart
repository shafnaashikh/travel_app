import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/screens/advanced/dataadvanced.dart';
class vegitablePage extends StatelessWidget {
  const vegitablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: 0.8),
            itemCount: vegitable.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/${vegitable[index]['img']}')
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.heart_fill,color: CupertinoColors.systemGrey2,),
                      ),
                      SizedBox(height: 100,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${vegitable[index]['name']}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          children: [
                            Text('\$${vegitable[index]['rate']}',style: TextStyle(
                              decoration: TextDecoration.lineThrough
                            ),),
                            SizedBox(width: 5,),
                            Text('\$${vegitable[index]['offer']}'),
                            SizedBox(width: 80,),
                            Text('${vegitable[index]['weight']}kg')
                          ],

                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          width: 170,
                          child: ElevatedButton(
                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green
                              ),
                              onPressed: (){}, child: Text('Add')),
                        ),
                      )
                      

                    ],
                  ),

                ),
              );
            }),
      ),
    );
  }
}
