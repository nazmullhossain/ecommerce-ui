import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pNames=[
      "Apple Watch -M2",
      "White Tshirt",
      "Nike Shoe",
      "Ear Headphone"
    ];
    var pSize=[
      "36",
      "M",
      "S",
      "40",
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20
        ),
        child: Column(
          children:  [
            const Align(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                for (int i=0; i<4; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 248),
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 100,
                          width: MediaQuery.of(context).size.width/4,
                      margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("images/${pNames[i]}.png",
                          height: 70,
                          width: 70,),

                        ),

                        Container(
                          // width: MediaQuery.of(context).size.width/1.8,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 20,
                              bottom: 25
                            ),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(pNames[i],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Size",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                    const SizedBox(width: 5,),
                                    Text(pSize[i],
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),),




                                  ],
                                ),

                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("\$4"),
                                    // Spacer(),

                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),

                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const [
                                          Icon(CupertinoIcons.minus),
                                          Text("01"),
                                          Icon(CupertinoIcons.plus),

                                        ],
                                      ),
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
