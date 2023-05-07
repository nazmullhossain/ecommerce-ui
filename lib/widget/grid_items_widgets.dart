import 'package:flutter/material.dart';

import '../pages/item_page.dart';

class GridItemsWidget extends StatelessWidget {
  const GridItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pNames=[
      "Apple Watch -M2",
      "White Tshirt",
      "Nike Shoe",
      "Ear Headphone"
    ];
    return GridView.builder(
      shrinkWrap: true,
      itemCount: pNames.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
          childAspectRatio: 0.7

        ),
        itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFD4ECF7),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,


              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("30% off",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                    Icon(Icons.favorite,
                    color: Colors.redAccent,)
                  ],
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage()));
                  },
                  child: Image.asset("images/${pNames[index]}.png",
                  height: 100,
                  width: 100,),
                ),),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pNames[index],style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("\$100",style: TextStyle(
                          fontSize: 15,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 5,),
                        Text("\$130",
                        style: TextStyle(
                          fontSize: 13,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    )
                  ],
                ),)
              ],
            ),
          ),
        );

        });
  }
}
