// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/lei/leiModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class leiModelAdapter extends TypeAdapter<leiModel> {
  @override
  final int typeId = 18;

  @override
  leiModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return leiModel(
      id: fields[0] as String,
      fenlei: fields[3] as String,
      fenleia: fields[1] as String,
      fenleiachina: fields[2] as String,
      fenleichina: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, leiModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fenleia)
      ..writeByte(2)
      ..write(obj.fenleiachina)
      ..writeByte(3)
      ..write(obj.fenlei)
      ..writeByte(4)
      ..write(obj.fenleichina);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is leiModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
