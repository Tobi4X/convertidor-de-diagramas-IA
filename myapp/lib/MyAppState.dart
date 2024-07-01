//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier{
  //var currentWord = WordPair.random();
  var isSignedIn = false;
  var userData = '';
  var diagrams = <String> []; 
  var currentDiagram;
  var diagView = false;

  /*void getNext(){
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
  }*/

  void setDiagram(String diagramCode){
    currentDiagram = diagramCode;
    notifyListeners();
  }

  void getDiagram(){
    currentDiagram = diagrams.first;
    notifyListeners();
  } 

  void setDiagView(bool b){
    diagView = b;
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