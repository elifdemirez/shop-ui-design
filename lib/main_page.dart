import 'package:flutter/material.dart';
import 'package:untitled5/cart_page.dart';
import 'package:untitled5/consts/colors.dart';
import 'package:untitled5/consts/sizes.dart';
import 'package:untitled5/consts/containerSizes.dart';
import 'package:untitled5/favourites.dart';
import 'package:untitled5/profile_page.dart';
import 'package:untitled5/widgets/product_container.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.pinkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.settings,
          color: ProjectColors.blackColor,
          size: ProjectIconSizes.normalIconSize,
        ),
        actions: [
          Icon(Icons.search,
              color: ProjectColors.blackColor,
              size: ProjectIconSizes.normalIconSize),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ProjectColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.storefront_outlined,
                color: ProjectColors.greyColor,
                size: ProjectIconSizes.smallIconSize,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: ProjectColors.greyColor,
                size: ProjectIconSizes.smallIconSize,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavouritesPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: ProjectColors.darkblueColor,
                size: ProjectIconSizes.normalIconSize,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.checklist_rtl_outlined,
                color: ProjectColors.greyColor,
                size: ProjectIconSizes.smallIconSize,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: ProjectColors.greyColor,
                size: ProjectIconSizes.smallIconSize,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            //Row place(text(our product))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Products",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      "Sort by",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ProjectColors.greyColor,
                          ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ContainerLn(text: 'Dress', icon: Icons.ac_unit),
                _ContainerLn(text: 'Shoe', icon: Icons.snowshoeing),
                _ContainerLn(text: 'Jewellery', icon: Icons.diamond),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: ProjectColors.lightgreyColor,
                ),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductContainer(),
                  ProductContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: ProjectColors.lightgreyColor,
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductContainer(),
                  ProductContainer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _ContainerLn({required String text, required IconData icon}) {
    return Container(
      width: ProjectWidth.normalContainerWidth,
      height: ProjectHeight.normalContainerHeight,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 15.0,
          color: ProjectColors.greyColor,
        )
      ]),
      child: Container(
        color: ProjectColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }
}
