import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/joke.dart';
import '../services/joke_service.dart';

class JokeViewModel with ChangeNotifier {
  final JokeService _jokeService;
  Set<int> _usedIndexes = {};

  String currentJoke = '';
  bool allJokesShown = false;
  int _currentJokeIndex = -1;

  JokeViewModel(this._jokeService);

  Future<void> showRandomJoke() async {
    if (allJokesShown) return;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    _usedIndexes =
        (prefs.getStringList('usedIndexes')?.map(int.parse).toSet() ?? {});

    try {
      Joke joke = _jokeService.getRandomJoke(_usedIndexes);
      currentJoke = joke.content;
      _currentJokeIndex = _jokeService.getIndexForJoke(joke);
    } catch (e) {
      allJokesShown = true;
      currentJoke = "That's all the jokes for today! Come back another day!";
    }

    notifyListeners();
  }

  Future<void> vote(bool like) async {
    if (_currentJokeIndex != -1) {
      _usedIndexes.add(_currentJokeIndex);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(
        'usedIndexes',
        _usedIndexes.map((index) => index.toString()).toList(),
      );

      showRandomJoke();
    }
  }
}
