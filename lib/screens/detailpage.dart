import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/screens/data.dart';
import 'package:travelapp/screens/home.dart';
class DetailPage extends StatefulWidget {
  DetailPage({Key? key , required this.nature, required this.name, required this.place}) : super(key: key);
var nature, name, place;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var is_selected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(70),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/${widget.nature}'),fit:BoxFit.cover,
                      )
                  ),



                  // child: IconButton(onPressed: () {
                  //   Navigator.pop(context);
                  // },icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: InkWell(
                      onTap: (){
                       Navigator.pop(context);
                      },

                      child: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
                ),
              ],

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.name}',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),

                  IconButton(onPressed: (){
                    setState(() {
                      is_selected=!is_selected;
                    });
                  }, icon: (is_selected)?Icon(CupertinoIcons.heart_fill, color: Colors.red,)
                      :Icon(CupertinoIcons.heart, color: Colors.red,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${widget.place}'),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like'),
            )
          ],
        ),
      ),
    );
  }
}
