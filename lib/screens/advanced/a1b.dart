import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
class G_homePage extends StatelessWidget {
  const G_homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_print_shop, color: Colors.black,),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(width: 20,),
            Center(child: Icon(Icons.location_on_outlined, color: Colors.red,size: 20,)),
            Text('At TimeSquare, opposite at AT&T',style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 13
            ),)
          ],
        ),
        actions: [
          Icon(CupertinoIcons.bell, color: Colors.black,)
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                decoration: InputDecoration(
                  filled: true,fillColor: Colors.grey[100],
                  hintText: 'Search Products',
                  suffixIcon: Icon(CupertinoIcons.search),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  //
                  // )
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 220,
                  width: 170,
                  color: Colors.brown[900],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Delicious',
                        style: TextStyle(
                        color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),),
                      Text('Biscuits',
                     style: TextStyle(
                         color: Colors.white,
                               fontSize: 28,
                           fontWeight: FontWeight.bold),),
                    ],
                  ),

                ),
                Container(
                  height: 220,
                  width: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.deepOrange,Colors.orange, Colors.yellow]
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/cookies.png'),fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Text('  Choose Categories',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomLeft,
                          image: AssetImage('assets/veg1.png')
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.green, Colors.yellow]
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Vegitables & fruits',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomLeft,
                              image: AssetImage('assets/bkry.png')
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.deepPurple,Colors.deepPurple, Colors.white]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Bakery Products',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomLeft,
                              image: AssetImage('assets/dairyproduct.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff232DD9),Color(0xff232DD9), Colors.white]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dairy      Products',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/dry1.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.brown,Colors.white]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dry Fruits',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/chocolate.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.deepPurple,Colors.blue, Colors.yellow]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Chocolates',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/drinks1.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.orange, Colors.yellow]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Drinks/Water',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/grocery1.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff0A5602), Colors.yellow]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Grocery',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),


                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/snack1.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff911208),Colors.redAccent,Colors.white]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Snacks',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 160,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/frozen1.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff0A5602),Colors.lightGreenAccent,]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Frozen Food',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      ),
                    ),
                  ],
                ),
              ],
            )



          ],
        ),
      ),
    );
  }
}
