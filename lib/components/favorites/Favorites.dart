import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:myapp/components/favorites/FavoriteCard.dart';
import 'package:provider/provider.dart';

class Favorites extends StatelessWidget{
  Widget build(BuildContext context){
    var appState = context.watch<MyAppState>();
    var favoritesArr = appState.favorites;


    if(favoritesArr.isEmpty){
      return Center(
        child: Text('Theres no favorites yet'),
      );
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0), // Adjust margins as needed
        child: Scaffold(
          body: ListView(
            children: [
              for (var word in favoritesArr) FavoriteCard(word: word),
            ],
          ),
        ),
      ),
    );


  }
}