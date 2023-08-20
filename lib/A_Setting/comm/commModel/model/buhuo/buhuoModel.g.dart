// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/buhuo/buhuoModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuhuoModelAdapter extends TypeAdapter<BuhuoModel> {
  @override
  final int typeId = 23;

  @override
  BuhuoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BuhuoModel(
      pic: fields[0] as String,
      shang: fields[1] as String,
      lou: fields[2] as String,
      hao: fields[3] as String,
      price: fields[4] as String,
      beizhu: fields[6] as String?,
      num: fields[5] as String,
      guige: fields[7] as String?,
      color: fields[9] as String?,
      size: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BuhuoModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.pic)
      ..writeByte(1)
      ..write(obj.shang)
      ..writeByte(2)
      ..write(obj.lou)
      ..writeByte(3)
      ..write(obj.hao)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.num)
      ..writeByte(6)
      ..write(obj.beizhu)
      ..writeByte(7)
      ..write(obj.guige)
      ..writeByte(8)
      ..write(obj.size)
      ..writeByte(9)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuhuoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
