import 'package:flutter/material.dart';
import 'package:untitled5/consts/colors.dart';
import 'package:untitled5/main_page.dart';
import 'package:untitled5/widgets/product_container.dart';
import 'package:untitled5/consts/sizes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.pinkColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ProjectColors.blackColor,
            size: ProjectIconSizes.normalIconSize,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: ProjectColors.redColor,
            size: ProjectIconSizes.normalIconSize,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ProjectColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('80.00 TL', textScaleFactor: 2),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  Text('Add to cart'),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
            color: ProjectColors.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: ProjectColors.pinkColor,
                  width: 500,
                  height: 400,
                  child: Image.asset("assets/images/toddler2.jpg"),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: ProjectColors.whiteColor,
                  child: Text(
                    'Product name',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Text('Product description'),
                SizedBox(height: 25),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Size:',
                        style: TextStyle(
                          color: ProjectColors.blackColor,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: ProjectColors.whiteColor,
                          child: Text(
                            '32',
                            style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),
                          ),
                          splashColor: ProjectColors.whiteColor,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: ProjectColors.whiteColor,
                          child: Text(
                            '34',
                            style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),
                          ),
                          splashColor: ProjectColors.whiteColor,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: ProjectColors.whiteColor,
                          child: Text(
                            '36',
                            style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),
                          ),
                          splashColor: ProjectColors.whiteColor,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: ProjectColors.whiteColor,
                          child: Text(
                            '38',
                            style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),
                          ),
                          splashColor: ProjectColors.whiteColor,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: ProjectColors.whiteColor,
                          child: Text(
                            '40',
                            style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),
                          ),
                          splashColor: ProjectColors.whiteColor,
                          onPressed: () {},
                        ),
                      ),
                    ]),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Available Color:',
                      style: TextStyle(
                        color: ProjectColors.blackColor,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        backgroundColor: ProjectColors.pinkColor,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        backgroundColor: ProjectColors.yellowColor,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        backgroundColor: ProjectColors.blueColor,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        backgroundColor: ProjectColors.blackColor,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
