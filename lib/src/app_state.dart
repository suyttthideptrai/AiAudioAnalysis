import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  /*
  Application state class
  ChangeNotifier -> one of Flutter state management classes
  */
  var current = WordPair.random();
  var mainText = 'Pink + White by Frank Ocean';
  var favorites = <WordPair>[];

  void getNext() {
    /**
     * Define a behavior for state
     */
    current = WordPair.random();
    notifyListeners();
    /**
     * notifyListeners() -> notifies the listener components of the state change
     */
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}