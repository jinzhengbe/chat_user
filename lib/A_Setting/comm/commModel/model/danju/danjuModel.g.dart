// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'danjuModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DanjuModelAdapter extends TypeAdapter<DanjuModel> {
  @override
  final int typeId = 24;

  @override
  DanjuModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DanjuModel(
      id: fields[0] as String,
      cid: fields[1] as String,
      sn: fields[2] as String,
      uuid: fields[3] as String,
      shang: fields[4] as String,
      lou: fields[5] as String,
      hao: fields[6] as String,
      time: fields[8] as String,
      netpic: fields[7] as String,
      zzid: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DanjuModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cid)
      ..writeByte(2)
      ..write(obj.sn)
      ..writeByte(3)
      ..write(obj.uuid)
      ..writeByte(4)
      ..write(obj.shang)
      ..writeByte(5)
      ..write(obj.lou)
      ..writeByte(6)
      ..write(obj.hao)
      ..writeByte(7)
      ..write(obj.netpic)
      ..writeByte(8)
      ..write(obj.time)
      ..writeByte(9)
      ..write(obj.zzid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DanjuModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
