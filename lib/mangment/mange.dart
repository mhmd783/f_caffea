import 'package:cafea/dbhive/dbhive.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class mange extends ChangeNotifier {
  late Box myTables = Hive.box<Tables>("Tables");
  late Box myTypeDrinkes = Hive.box<TypeDrinkes>("TypeDrinkes");
  late Box myDrinls = Hive.box<Drinkes>("Drinkes");
  late Box myBookedUp = Hive.box<BookedUp>("BookedUp");
  late Box myAddDrink = Hive.box<AddDrink>("AddDrink");
  late Box myTakeAway = Hive.box<TakeAway>("TakeAway");
  late Box myAllOrders = Hive.box<AllOrders>("AllOrders");
  int screen = 0;
  screenhome() {
    screen = 0;
    notifyListeners();
  }
  screentoday() {
    screen = 1;
    notifyListeners();
  }
  screenall() {
    screen = 2;
    notifyListeners();
  }
  screensetting() {
    screen = 3;
    notifyListeners();
  }
}
