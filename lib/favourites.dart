import 'package:flutter/material.dart';
import 'package:untitled5/consts/colors.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}
class _FavouritesPageState extends State<FavouritesPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.pinkColor,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Favourites',
            style: TextStyle(
              color: ProjectColors.blackColor,
              fontSize: 25,
            ),
            ),
            Icon(
              Icons.favorite_sharp,color: ProjectColors.pinkColor,
            ),
            Icon(
              Icons.favorite_sharp,color: ProjectColors.pinkColor,
            ),
            Icon(
              Icons.favorite_sharp,color: ProjectColors.pinkColor,
            ),
          ],
        ),


      ),

    );

  }
}