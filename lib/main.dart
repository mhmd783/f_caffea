import 'dart:io';

import 'package:cafea/mangment/mange.dart';
import 'package:cafea/veiw/all.dart';
import 'package:cafea/veiw/home.dart';
import 'package:cafea/veiw/setting.dart';
import 'package:cafea/veiw/today.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'dbhive/dbhive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
  //adapter
  Hive.registerAdapter(TablesAdapter());
  Hive.registerAdapter(TypeDrinkesAdapter());
  Hive.registerAdapter(DrinkesAdapter());
  Hive.registerAdapter(BookedUpAdapter());
  Hive.registerAdapter(AddDrinkAdapter());
  Hive.registerAdapter(TakeAwayAdapter());
  Hive.registerAdapter(AllOrdersAdapter());
  //openboxes
  await Hive.openBox<Tables>("Tables");
  await Hive.openBox<TypeDrinkes>("TypeDrinkes");
  await Hive.openBox<Drinkes>("Drinkes");
  await Hive.openBox<BookedUp>("BookedUp");
  await Hive.openBox<AddDrink>("AddDrink");
  await Hive.openBox<TakeAway>("TakeAway");
  await Hive.openBox<AllOrders>("AllOrders");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return mange();
    },
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        "home":(context) => home(),
        "today":(context) => today(),
        "all":(context) => all(),
        "setting":(context) => setting(),
      },
      home: home(),
    ),
    );
  }
}
