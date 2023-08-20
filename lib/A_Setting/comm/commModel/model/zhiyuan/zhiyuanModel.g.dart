// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zhiyuanModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZhiYuanModelAdapter extends TypeAdapter<ZhiYuanModel> {
  @override
  final int typeId = 30;

  @override
  ZhiYuanModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZhiYuanModel(
      id: fields[0] as String,
      name: fields[1] as String,
      phone: fields[2] as String,
      password: fields[3] as String,
      quanxian: fields[4] as String,
      age: fields[5] as String,
      job: fields[6] as String,
      ok: fields[7] as String,
      time: fields[8] as String,
      weixin: fields[9] as String,
      xingbie: fields[10] as String,
      add: fields[11] as String,
      show: fields[12] as String,
      pic: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ZhiYuanModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.quanxian)
      ..writeByte(5)
      ..write(obj.age)
      ..writeByte(6)
      ..write(obj.job)
      ..writeByte(7)
      ..write(obj.ok)
      ..writeByte(8)
      ..write(obj.time)
      ..writeByte(9)
      ..write(obj.weixin)
      ..writeByte(10)
      ..write(obj.xingbie)
      ..writeByte(11)
      ..write(obj.add)
      ..writeByte(12)
      ..write(obj.show)
      ..writeByte(13)
      ..write(obj.pic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ZhiYuanModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
