// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picListModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PicListModelAdapter extends TypeAdapter<PicListModel> {
  @override
  final int typeId = 60;

  @override
  PicListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PicListModel(
      id: fields[0] as String,
      oid: fields[1] as String,
      pic: fields[2] as String,
      pid: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PicListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.oid)
      ..writeByte(2)
      ..write(obj.pic)
      ..writeByte(3)
      ..write(obj.pid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PicListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
