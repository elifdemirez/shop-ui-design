import 'package:flutter/material.dart';
import 'package:untitled5/consts/colors.dart';
import 'package:untitled5/product_description_page.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 250,
        color: ProjectColors.whiteColor,
        child:GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductPage()));
          },
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_border_outlined),
            ],
          ),
          Container(
            width: 150,
            height: 90,
            decoration: BoxDecoration(
                color: ProjectColors.whiteColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/wave.jpg",),
                    opacity: 0.50
                )
            ),

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Image.asset("assets/images/toddler2.jpg",),

                decoration: BoxDecoration(
                    color: ProjectColors.yellowColor,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),

            ),
          ),
          SizedBox(height: 20,),
          Text("Product Name"),
          SizedBox(height: 5,),
          Text("80.00 TL"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,size:15,color: ProjectColors.yellowColor),
              Icon(Icons.star,size:15,color: ProjectColors.yellowColor),
              Icon(Icons.star,size:15,color: ProjectColors.yellowColor),
              Icon(Icons.star,size:15,color: ProjectColors.yellowColor),
              Icon(Icons.star,size:15,color: ProjectColors.yellowColor),
            ],
          )
        ],
      ),
    ));
  }
}

