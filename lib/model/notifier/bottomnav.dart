import 'package:flutter/cupertino.dart';

class BottomnavNotifier extends ChangeNotifier{
 int currentIndex=0;
  void bottomnav(int index){
    currentIndex = index;
    notifyListeners();
   // return index1;
  }
}