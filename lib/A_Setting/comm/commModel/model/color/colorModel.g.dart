// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/color/colorModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class colorModelAdapter extends TypeAdapter<colorModel> {
  @override
  final int typeId = 16;

  @override
  colorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return colorModel(
      id: fields[0] as String,
      lei: fields[6] as String,
      color: fields[1] as String,
      cnlie: fields[5] as String,
      colorcn: fields[3] as String,
      colorkr: fields[2] as String,
      krlei: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, colorModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.color)
      ..writeByte(2)
      ..write(obj.colorkr)
      ..writeByte(3)
      ..write(obj.colorcn)
      ..writeByte(4)
      ..write(obj.krlei)
      ..writeByte(5)
      ..write(obj.cnlie)
      ..writeByte(6)
      ..write(obj.lei);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is colorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
