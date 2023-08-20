// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shangModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShangModelAdapter extends TypeAdapter<ShangModel> {
  @override
  final int typeId = 20;

  @override
  ShangModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShangModel(
      id: fields[0] as String,
      shang: fields[1] as String,
      lou: fields[3] as String,
      brand: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ShangModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.shang)
      ..writeByte(2)
      ..write(obj.brand)
      ..writeByte(3)
      ..write(obj.lou);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShangModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
