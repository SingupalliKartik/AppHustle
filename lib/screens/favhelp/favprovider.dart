import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Favprovider extends ChangeNotifier{
  List<searchmodel> _words = [];
  List<searchmodel> get words => _words;

  void toggleFavorite(searchmodel n) {
    if (isExist(n)) {
      _words.remove(n);
    } else {
      _words.add(n);
    }
    notifyListeners();
  }
// bool hekhyalistme(int n ){
//     if()
// }
  void remorew(searchmodel n){
    _words.remove(n);
    notifyListeners();
  }
  bool isExist(searchmodel n) {
    final isExist = _words.contains(n);
    return isExist;
  }

  void clearFavorite() {
    _words = [];
    notifyListeners();
  }

  static Favprovider of(
      BuildContext context, {
        bool listen = true,
      }) {
    return Provider.of<Favprovider>(
      context,
      listen: listen,
    );
  }

}