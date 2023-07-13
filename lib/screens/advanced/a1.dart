import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class G_loginPage extends StatelessWidget {
  const G_loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bv.jpg'), fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text('   Welcome to',
            style: TextStyle(
              fontSize: 22,
              // fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            Text('   G-shop',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),),
            Text('     A Multivender Grocery Store',
            style: TextStyle(
              color: Colors.white
            ),),
            Column(
              children: [
                SizedBox(height: 500,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                      height: 40,

                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[800]
                          ),
                          onPressed: (){}, child: Text('Continue to Login'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                      height: 40,

                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black
                          ),
                          onPressed: (){}, child: Text('Create an Account'))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
