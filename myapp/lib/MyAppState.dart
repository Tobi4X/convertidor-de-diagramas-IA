import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier{
  var currentWord = WordPair.random();
  var isSignedIn = false;
  var userData = '';

  void getNext(){
    currentWord = WordPair.random();
    notifyListeners();
  }

  void setWord(WordPair word){
    currentWord = word;
    notifyListeners();
  }

  var favorites = <WordPair> [];

  void togleFavorite(){
    if(favorites.contains(currentWord)){
      favorites.remove(currentWord);
    }
    else{
      favorites.add(currentWord);
    }
    notifyListeners();
  }

  void remove(WordPair word){
    if(favorites.contains(word)){
      favorites.remove(word);
    }
    else{
      favorites.add(word);
    }
    notifyListeners();
  }

  void logIn(){
    isSignedIn = true;
    notifyListeners();
  }

  void logOut(){
    isSignedIn = false;
    notifyListeners();
  }

}