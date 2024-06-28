import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:provider/provider.dart';

class FavoriteCard extends StatelessWidget{
  
  final WordPair word;

  const FavoriteCard({
    super.key,
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
  var appState = context.watch<MyAppState>();

  return Center(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 16.0), // Adjust margin as needed
      child: Row(
        mainAxisSize: MainAxisSize.min, // Center horizontally
        children: [
          ElevatedButton.icon(
            onPressed: () {
              appState.setWord(word);
            },
            label: Text('$word'),
          ),
          const SizedBox(width: 8.0), // Add spacing between buttons
          ElevatedButton.icon(
            onPressed: () {
              appState.remove(word);
            },
            label: const Icon(Icons.delete),
          ),
        ],
      ),
    ),
  );
}

}