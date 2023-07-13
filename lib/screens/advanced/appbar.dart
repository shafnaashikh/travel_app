import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'a1c.dart';
class tabPage extends StatelessWidget {
  const tabPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back,color: Colors.black,),
          title: Text('     Vegitable & fruits',style: TextStyle(
              color: Colors.black
          ),),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50)
            ),
            // indicatorColor: Colors.blue,
            tabs: [
              Tab(
                text: 'Mushrooms',
              ) ,
              Tab(
                text: 'Vegitables',
              ),
              Tab(
                text: 'Salad Mixes',
              )
            ],

          ),
        ),
          body: TabBarView(
            children: [
              Text('sorry!..'),
              vegitablePage(),
              Text('sorry!..'),


            ],
          ),
      ),
      );
  }
}
