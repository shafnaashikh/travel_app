import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cofeelist.dart';
import 'coffee.dart';

class CoffeeBottom extends StatefulWidget {
  const CoffeeBottom({Key? key}) : super(key: key);

  @override
  State<CoffeeBottom> createState() => _CoffeeBottomState();
}

class _CoffeeBottomState extends State<CoffeeBottom> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),

                )
            ),
            child: Column(
        children: const [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'Hot Coffee',
                ),
                Tab(
                  text: 'Cold Coffee',
                ),
                Tab(
                  text: 'Other',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  coffeeListPage(),
                  coffeeListPage(),
                  coffeeListPage(),
                ],
              ),
            ),
        ],
      ),
          )
          // Container(
          //   width: double.infinity,
          //   height: 510,
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(30),
          //         topRight: Radius.circular(30),
          //
          //       )
          //   ),
          //   child: Column(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          //         child: TextField(
          //           decoration: InputDecoration(
          //               prefixIcon: Icon(CupertinoIcons.search,size: 20,),
          //               label: Text('search your coffee'),
          //               border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(30),
          //               )
          //           ),
          //         ),
          //       ),
          //
          //       Container(
          //         height: 390,
          //
          //         child: ListView.builder(
          //             itemCount:3,
          //             itemBuilder: (context,index){
          //               return Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Container(
          //                   height: 100,
          //                   width: double.infinity,
          //                   // color: Colors.grey,
          //                   child:Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           height: 100,
          //                           width: 100,
          //                           decoration: BoxDecoration(
          //                               image: DecorationImage(
          //                                   image: AssetImage('assets/${coffee[index]['img']}'),fit: BoxFit.cover
          //                               ),
          //                               borderRadius: BorderRadius.circular(15),
          //                               boxShadow: [
          //                                 BoxShadow(
          //                                   color: Colors.grey,
          //                                   blurStyle: BlurStyle.normal,
          //                                   blurRadius: 0.2,
          //                                 )]
          //                           ),
          //                         ),
          //                       ),
          //                       Column(
          //                         // mainAxisAlignment: MainAxisAlignment.start,
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           SizedBox(height: 3,),
          //                           Text('${coffee[index]['name']}',
          //                             style: TextStyle(
          //                                 fontWeight: FontWeight.bold,
          //                                 fontSize: 16
          //                             ),),
          //                           Text('Espresso with ${coffee[index]['item']}..' ,
          //                             style: TextStyle(
          //                                 fontSize: 12,
          //                                 color: Colors.grey
          //                             ),),
          //                           SizedBox(height: 16,),
          //                           Text('Rp ${coffee[index]['rp']}',
          //                             style: TextStyle(
          //                                 fontWeight: FontWeight.bold,
          //                                 fontSize: 16
          //                             ),)
          //                         ],
          //                       ),
          //
          //                       Center(child: Icon(Icons.add_box_rounded, color: Color(0xffECA996),)),
          //                     ],
          //                   ),
          //
          //                 ),
          //               );
          //             }),
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
