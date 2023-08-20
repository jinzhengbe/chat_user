// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plistModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlistModelAdapter extends TypeAdapter<PlistModel> {
  @override
  final int typeId = 31;

  @override
  PlistModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlistModel(
      id: fields[0] as String,
      shang: fields[1] as String,
      lou: fields[2] as String,
      hao: fields[3] as String,
      price: fields[4] as String,
      pic: fields[12] as String,
      num: fields[7] as String,
      guige: fields[13] as String,
      beizhu: fields[14] as String,
      uid: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PlistModel obj) {
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
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.num)
      ..writeByte(8)
      ..write(obj.uid)
      ..writeByte(12)
      ..write(obj.pic)
      ..writeByte(13)
      ..write(obj.guige)
      ..writeByte(14)
      ..write(obj.beizhu);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlistModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
