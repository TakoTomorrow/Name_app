import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/// 應用程式狀態
class MyAppState extends ChangeNotifier {
  /// 當前字串
  var current = WordPair.random();

  /// 我的最愛清單
  var favorites = <WordPair>[];

  /// 取得下一個
  void getNext() {
    current = WordPair.random();

    // 通知監聽者
    notifyListeners();
  }

  /// 切換我的最愛
  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }

    // 通知監聽者
    notifyListeners();
  }
}
