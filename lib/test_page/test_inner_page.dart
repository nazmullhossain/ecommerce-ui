import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestInnerPage extends StatelessWidget {
  const TestInnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> clr = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];

    var imageList = [
      "images/slide1.png",
      "images/slide4.png",
      "images/slide3.png",
    ];
    var iconImageList = [
      'images/icon1.png',
      'images/icon2.png',
      'images/icon3.png',
      'images/icon4.png',
      'images/icon5.png',
      'images/icon6.png',
      'images/icon7.png',
      // 'images/icon1.png',
    ];
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40, right: 15, left: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFD4ECF7),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 4, color: Colors.black12)
                    ]),
                child: Icon(
                  CupertinoIcons.shopping_cart,
                  size: 28,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFD4ECF7),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 4, color: Colors.black12)
                    ]),
                child: Icon(
                  CupertinoIcons.search,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hellow Nazmul",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Lets Shop Something",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black45),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: clr[i],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "30% Off on winter colleciton",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            Container(
                              width: 90,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: const Text(
                                  "Shop",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        imageList[i],
                        height: 180,
                        width: 110,
                      )
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    ));
  }
}
