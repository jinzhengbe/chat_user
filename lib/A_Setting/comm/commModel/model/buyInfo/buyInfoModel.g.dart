// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/buyInfo/buyInfoModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuyInfoModelAdapter extends TypeAdapter<BuyInfoModel> {
  @override
  final int typeId = 3;

  @override
  BuyInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BuyInfoModel(
      id: fields[0] as String,
      shang: fields[1] as String,
      lou: fields[2] as String,
      hao: fields[3] as String,
      start: fields[4] as String,
      end: fields[5] as String,
      uid: fields[6] as String,
      zhunbeijin: fields[7] as String,
      data: fields[8] as String,
      jiesuanri: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BuyInfoModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.shang)
      ..writeByte(2)
      ..write(obj.lou)
      ..writeByte(3)
      ..write(obj.hao)
      ..writeByte(4)
      ..write(obj.start)
      ..writeByte(5)
      ..write(obj.end)
      ..writeByte(6)
      ..write(obj.uid)
      ..writeByte(7)
      ..write(obj.zhunbeijin)
      ..writeByte(8)
      ..write(obj.data)
      ..writeByte(9)
      ..write(obj.jiesuanri);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuyInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
