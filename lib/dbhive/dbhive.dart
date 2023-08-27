import 'package:hive/hive.dart';
part 'dbhive.g.dart';
@HiveType(typeId: 0)
class Tables extends HiveObject {
  @HiveField(0)
  late String idtable;

  @HiveField(1)
  late String number;

  

  Tables(
      {required this.idtable,
      required this.number,
      });
}
@HiveType(typeId: 1)
class TypeDrinkes extends HiveObject {
  @HiveField(0)
  late String idtypedrink;

  @HiveField(1)
  late String typedrink;

  

  TypeDrinkes(
      {required this.idtypedrink,
      required this.typedrink,
      });
}
@HiveType(typeId: 2)
class Drinkes extends HiveObject {
  @HiveField(0)
  late String iddrink;

  @HiveField(1)
  late String idtypedrink;

  @HiveField(2)
  late String price;

  @HiveField(3)
  late String type;

  @HiveField(4)
  late String path;

  

  Drinkes(
      {required this.iddrink,
      required this.idtypedrink,
      required this.price,
      required this.type,
      required this.path,
      });
}

@HiveType(typeId: 3)
class BookedUp extends HiveObject {
  @HiveField(0)
  late String idtable;

  @HiveField(1)
  late String number;

  @HiveField(2)
  late String date;

  @HiveField(3)
  late String time;

  

  BookedUp(
      {required this.idtable,
      required this.number,
      required this.date,
      required this.time,
      
      });
}

@HiveType(typeId: 4)
class AddDrink extends HiveObject {
  @HiveField(0)
  late String idtable;

  @HiveField(1)
  late String iddrink;

  @HiveField(2)
  late String number;

  @HiveField(3)
  late String name;

  @HiveField(4)
  late String price;

  @HiveField(5)
  late String path;

  @HiveField(6)
  late String date;

  @HiveField(7)
  late String time;

  

  AddDrink(
      {required this.idtable,
      required this.number,
      required this.iddrink,
      required this.name,
      required this.price,
      required this.path,
      required this.date,
      required this.time,
      });
}

@HiveType(typeId: 5)
class TakeAway extends HiveObject {
  @HiveField(0)
  late String idorder;

  @HiveField(1)
  late String iddrink;

  @HiveField(2)
  late String name;

  @HiveField(3)
  late String price;

  @HiveField(4)
  late String path;

  @HiveField(5)
  late String date;

  @HiveField(6)
  late String time;

  

  TakeAway(
      {required this.idorder,
      required this.iddrink,
      required this.name,
      required this.price,
      required this.path,
      required this.date,
      required this.time,
      });
}

@HiveType(typeId: 6)
class AllOrders extends HiveObject {
   @HiveField(0)
  late String typeorder;

  @HiveField(1)
  late String idtable;

  @HiveField(2)
  late String number;

  @HiveField(3)
  late String idorder;

  @HiveField(4)
  late String iddrink;

  @HiveField(5)
  late String name;

  @HiveField(6)
  late String price;
  @HiveField(7)
  late String path;

  @HiveField(8)
  late String date;

  @HiveField(9)
  late String time;
  

  AllOrders(
      {required this.typeorder,
      required this.idtable,
      required this.number,
      required this.idorder,
      required this.iddrink,
      required this.name,
      required this.price,
      required this.path,
      required this.date,
      required this.time,
      });
}


