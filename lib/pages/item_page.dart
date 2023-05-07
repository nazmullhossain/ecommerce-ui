import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widget/product_image_widget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
              child: Stack(
                children: [
                  Center(
                    child: ProductImageWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Apple Watch Serires 6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 25,
                          itemCount: 5,
                          initialRating: 3.4,
                          itemBuilder: (context, index) {
                            return Icon(Icons.start);
                          },
                          onRatingUpdate: (rating) {}),

                      SizedBox(width: 5,),
                      Text("450")
                    ],
                  ),
                  Row(
                    children: const [
                      Text("\$140",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,

                      ),),
                      SizedBox(width: 5,),
                      Text("\$240",style: TextStyle(
                    color: Colors.black45,
                        decoration: TextDecoration.lineThrough,


                      ),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text("This product two have quantity to n",
                  style: TextStyle(

                  ),textAlign: TextAlign.justify,)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(
          vertical: 10,horizontal: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent
                ),
                child: const Center(
                  child:  Text("Add to Cart",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFD4ECF7)
                ),
                child: const Center(
                  child:  Icon(Icons.favorite_outline,
                  color: Colors.redAccent,size: 30,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
