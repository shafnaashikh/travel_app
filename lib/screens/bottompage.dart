import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/screens/profile.dart';

import 'attraction.dart';
import 'home.dart';
import 'hotels.dart';
class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int current_index=0;
  List _travel=[
    HomePage(),
    attraction(),
    profilePage(),
    HotelPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _travel[current_index],
     bottomNavigationBar : BottomNavigationBar(
       showUnselectedLabels: true,
       unselectedItemColor: Colors.grey,
       selectedIconTheme: IconThemeData(color: Colors.blue),
       unselectedIconTheme: IconThemeData(color: Colors.grey),

       selectedItemColor: Colors.blue,
       currentIndex: current_index,

       onTap: (index){
         setState(()
         {
           current_index=index;
         });

       },
         items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(CupertinoIcons.home,

        size: 20,),

        ),
        BottomNavigationBarItem(
          label: 'Attraction',
          icon: Icon(CupertinoIcons.location_solid, size: 20,),

        ),
        BottomNavigationBarItem(
          label: 'profile',
          icon: Icon(CupertinoIcons.profile_circled,size: 20,),

        ),
        BottomNavigationBarItem(
          label: 'Hotel',
          icon: Icon(Icons.hotel,size: 20,),
  
        ),

      ],),
    );
  }
}
