import 'package:flutter/material.dart';

class MainScreenProvider with ChangeNotifier {
  SelectedIndex _selectedIndex = SelectedIndex(0);

  void changeSelectedIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }

  SelectedIndex get selectedIndex => _selectedIndex; 
}

class SelectedIndex {
  final int Index;
  SelectedIndex(this.Index);
}
