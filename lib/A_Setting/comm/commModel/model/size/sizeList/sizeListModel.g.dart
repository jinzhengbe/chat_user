// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../A_Setting/comm/commModel/model/size/sizeList/sizeListModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SizeListModelAdapter extends TypeAdapter<SizeListModel> {
  @override
  final int typeId = 9;

  @override
  SizeListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SizeListModel(
      size: fields[0] as String,
      fav: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SizeListModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.size)
      ..writeByte(1)
      ..write(obj.fav);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizeListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
