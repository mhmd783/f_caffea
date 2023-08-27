// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbhive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TablesAdapter extends TypeAdapter<Tables> {
  @override
  final int typeId = 0;

  @override
  Tables read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tables(
      idtable: fields[0] as String,
      number: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Tables obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.idtable)
      ..writeByte(1)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TablesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeDrinkesAdapter extends TypeAdapter<TypeDrinkes> {
  @override
  final int typeId = 1;

  @override
  TypeDrinkes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeDrinkes(
      idtypedrink: fields[0] as String,
      typedrink: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TypeDrinkes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.idtypedrink)
      ..writeByte(1)
      ..write(obj.typedrink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDrinkesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DrinkesAdapter extends TypeAdapter<Drinkes> {
  @override
  final int typeId = 2;

  @override
  Drinkes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Drinkes(
      iddrink: fields[0] as String,
      idtypedrink: fields[1] as String,
      price: fields[2] as String,
      type: fields[3] as String,
      path: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Drinkes obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.iddrink)
      ..writeByte(1)
      ..write(obj.idtypedrink)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.path);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookedUpAdapter extends TypeAdapter<BookedUp> {
  @override
  final int typeId = 3;

  @override
  BookedUp read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookedUp(
      idtable: fields[0] as String,
      number: fields[1] as String,
      date: fields[2] as String,
      time: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BookedUp obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.idtable)
      ..writeByte(1)
      ..write(obj.number)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookedUpAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddDrinkAdapter extends TypeAdapter<AddDrink> {
  @override
  final int typeId = 4;

  @override
  AddDrink read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddDrink(
      idtable: fields[0] as String,
      number: fields[2] as String,
      iddrink: fields[1] as String,
      name: fields[3] as String,
      price: fields[4] as String,
      path: fields[5] as String,
      date: fields[6] as String,
      time: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AddDrink obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.idtable)
      ..writeByte(1)
      ..write(obj.iddrink)
      ..writeByte(2)
      ..write(obj.number)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.path)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddDrinkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TakeAwayAdapter extends TypeAdapter<TakeAway> {
  @override
  final int typeId = 5;

  @override
  TakeAway read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TakeAway(
      idorder: fields[0] as String,
      iddrink: fields[1] as String,
      name: fields[2] as String,
      price: fields[3] as String,
      path: fields[4] as String,
      date: fields[5] as String,
      time: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TakeAway obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.idorder)
      ..writeByte(1)
      ..write(obj.iddrink)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.path)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TakeAwayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AllOrdersAdapter extends TypeAdapter<AllOrders> {
  @override
  final int typeId = 6;

  @override
  AllOrders read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllOrders(
      typeorder: fields[0] as String,
      idtable: fields[1] as String,
      number: fields[2] as String,
      idorder: fields[3] as String,
      iddrink: fields[4] as String,
      name: fields[5] as String,
      price: fields[6] as String,
      path: fields[7] as String,
      date: fields[8] as String,
      time: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AllOrders obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.typeorder)
      ..writeByte(1)
      ..write(obj.idtable)
      ..writeByte(2)
      ..write(obj.number)
      ..writeByte(3)
      ..write(obj.idorder)
      ..writeByte(4)
      ..write(obj.iddrink)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.path)
      ..writeByte(8)
      ..write(obj.date)
      ..writeByte(9)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllOrdersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
