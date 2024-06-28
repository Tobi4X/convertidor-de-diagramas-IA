import 'package:flutter/material.dart';
import '../../MyAppState.dart';
import 'BigCard.dart';
import 'package:provider/provider.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var word = appState.currentWord;

    IconData icon;
    if (appState.favorites.contains(word)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A random AWESOME idea:'),
            BigCard(word: word),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    appState.togleFavorite();
                  },
                  icon: Icon(icon),
                  label: Text('Like'),
                ),
                ElevatedButton(
                  onPressed: (){
                    appState.getNext();
                  }
                , child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}