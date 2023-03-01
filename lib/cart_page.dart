import 'package:flutter/material.dart';
import 'package:untitled5/consts/colors.dart';
import 'package:untitled5/consts/sizes.dart';
import 'package:untitled5/widgets/product_container.dart';
import 'package:untitled5/main_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Widget _mainPage=MainPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.lightgreyColor,
      appBar: AppBar(
        backgroundColor: ProjectColors.whiteColor,
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios_new_rounded,
          color: ProjectColors.blackColor,
          size: ProjectIconSizes.normalIconSize,),
           onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
           },
        ),
        centerTitle: true,
        title: Text('My Cart',
          style: TextStyle(color: ProjectColors.blackColor),
        ),
        actions: [
          Icon(
            Icons.delete_outline_outlined,
            color: ProjectColors.greyColor,
            size: ProjectIconSizes.normalIconSize,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ProjectColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('480.00 TL', textScaleFactor: 2),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(
                    Icons.output_outlined,
                  ),
                  Text('Check out'),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Expanded(
              flex:2,
              child: ListView.builder(
                itemCount:4,
                itemBuilder:(BuildContext context, int index) =>
                    Container(
                      color: ProjectColors.whiteColor,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: ProjectColors.whiteColor,
                            image: DecorationImage(
                              fit: BoxFit.cover ,
                              image: AssetImage("assets/images/toddler2.jpg")
                            )
                          ),

                        ),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                           children: [
                             Text('Product Name',style: TextStyle(
                               color: ProjectColors.pink2Color,
                             ),),
                             SizedBox(height: 7,),
                             Text('120 TL'),
                           ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                backgroundColor: ProjectColors.whiteColor,
                                child: Text('-',style: TextStyle(
                                  color: ProjectColors.blackColor,
                                ),),
                                splashColor:ProjectColors.whiteColor,
                                onPressed: (){},
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('1',style: TextStyle(
                              color: ProjectColors.blackColor,
                            ),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                backgroundColor: ProjectColors.pinkColor,
                                child: Text('+',style: TextStyle(
                                  color: ProjectColors.blackColor,
                                ),),
                                splashColor:ProjectColors.whiteColor,
                                onPressed: (){},
                              ),
                            )
                          ],
                        )

                      ],
                  ),
                    ),

                )
              ),

          ],

        ),
      ),
    );
  }
}
