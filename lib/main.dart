import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/screens/a6%20advanced/a4b.dart';
import 'package:travelapp/screens/a6%20advanced/a6a.dart';
import 'package:travelapp/screens/a6%20advanced/coffeeBottom.dart';
import 'package:travelapp/screens/advanced/a1.dart';
import 'package:travelapp/screens/advanced/a1b.dart';
import 'package:travelapp/screens/advanced/a1c.dart';
import 'package:travelapp/screens/advanced/appbar.dart';
import 'package:travelapp/screens/attraction.dart';
import 'package:travelapp/screens/bottompage.dart';
import 'package:travelapp/screens/detailpage.dart';
import 'package:travelapp/screens/home.dart';
import 'package:travelapp/screens/hotels.dart';
import 'package:travelapp/screens/loginPage.dart';
import 'package:travelapp/screens/nature.dart';
import 'package:travelapp/screens/profile.dart';
import 'package:travelapp/screens/task/stackeg1.dart';
import 'package:travelapp/screens/task/stackeg2.dart';
import 'package:travelapp/screens/task/stackeg3.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   loginPage(),
    );
  }
}


