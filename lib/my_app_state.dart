import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/// 應用程式狀態
class MyAppState extends ChangeNotifier {
  /// 當前字串
  var current = WordPair.random();

  /// 我的最愛清單
  var favorites = <WordPair>[];

  var histories = <WordPair>[]; 

  GlobalKey? historyListKey ;

  /// 取得下一個
  void getNext() {
    histories.insert(0,current);
    var animatedList = historyListKey?.currentState as AnimatedListState?;
    animatedList?.insertItem(0);
    current = WordPair.random();

    // 通知監聽者
    notifyListeners();
  }

  /// 切換我的最愛
  void toggleFavorite([WordPair? pair]) {
    pair = pair ?? current;

    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }

    // 通知監聽者
    notifyListeners();
  }

  void removeFavorite({required WordPair pair}){
    favorites.remove(pair);

    // 通知監聽者
    notifyListeners();
  }
}
