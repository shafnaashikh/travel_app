import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class detailPageadvanced extends StatefulWidget {
  detailPageadvanced({Key? key,required this.img, required this.name, required this.rate}) : super(key: key);
var img,name,rate;

  @override
  State<detailPageadvanced> createState() => _detailPageadvancedState();
}

class _detailPageadvancedState extends State<detailPageadvanced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${widget.img}'),fit: BoxFit.cover
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text('${widget.name}',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Icon(CupertinoIcons.star_fill,color: Colors.orange,size: 30,);
                          }),
                    ),
                    SizedBox(height: 30,),
                    Text('Description',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,),),
                    SizedBox(height: 20,),
                    Text('Coffee is a beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plant. Coffee is one of the three most popular beverages in the world (alongside water and tea), and it is one of the most profitable international commodities.Coffee aroma descriptors include flowery, nutty, smoky, and herby, while taste descriptors include acidity, bitterness, sweetness, saltiness and sourness (see Coffee Flavour Wheel).'),
                  SizedBox(height: 120,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text('Price',style: TextStyle(
                            color: Colors.grey
                          ),),
                          Text('Rp ${widget.rate}',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ],
                      ),

                      Container(
                        width: 160,
                        height: 40,
                        child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDAA075)
                            ),
                            onPressed: (){}, child: Text('Add to Cart')),
                      )
                    ],
                  ),


                  ],
                ),
              ),
            ),
          ),
            Positioned(
              top: 235,
              right: 20,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(

                    )
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(CupertinoIcons.heart_fill, color: Colors.grey,),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
