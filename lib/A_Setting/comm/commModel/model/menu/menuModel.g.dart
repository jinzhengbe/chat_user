// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/menu/menuModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class menuModelAdapter extends TypeAdapter<menuModel> {
  @override
  final int typeId = 50;

  @override
  menuModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return menuModel(
      title: fields[0] as String,
      icon: fields[1] as String,
      item: fields[2] as itemModel,
    );
  }

  @override
  void write(BinaryWriter writer, menuModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.item);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is menuModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
