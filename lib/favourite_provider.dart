import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItem=[];

  List<int> get selectedItem => _selectedItem;

  void addItem(int item){
    _selectedItem.add(item);
    notifyListeners();
  }

  void removeItem(int item){
    _selectedItem.remove(item);
    notifyListeners();
  }
}