// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sizeModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SizeModelAdapter extends TypeAdapter<SizeModel> {
  @override
  final int typeId = 19;

  @override
  SizeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SizeModel(
      id: fields[0] as String,
      size: fields[2] as String,
      fenlei: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SizeModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fenlei)
      ..writeByte(2)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
