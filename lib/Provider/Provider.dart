import 'package:flutter/material.dart';
import '../Main/Items.dart';

class Prov_cart extends ChangeNotifier {
  late List<Items> _elements = [];
  late List<Items> _whiteitems = [];
  int _price = 0;
  void AddItem(Items item) {
    _elements.add(item);
    _price += item.price;
    notifyListeners();
  }

  void RemoveItem(Items item) {
    _elements.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  int get totalprice {
    return _price;
  }

  List<Items> get NewList {
    // help me to use the value which added to my list _elements
    return _elements;
  }

  // Favourite icon variable
  void AddToWhite(Items item) {
    _whiteitems.add(item);
    _price += item.price;
    notifyListeners();
  }

  void RemoveFromWhite(Items item) {
    _whiteitems.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  List<Items> get whitelistitems {
    return _whiteitems;
  }
}
class Prov_button extends ChangeNotifier{
  int index = 1;
  void method1(){
    index = 1;
    notifyListeners();
  }
  void method2(){
    index = 2;
    notifyListeners();
  }
  void method3(){
    index = 3;
    notifyListeners();
  }
}