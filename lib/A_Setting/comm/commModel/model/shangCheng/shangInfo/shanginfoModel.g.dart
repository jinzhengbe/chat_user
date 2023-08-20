// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shanginfoModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShangInfoModelAdapter extends TypeAdapter<ShangInfoModel> {
  @override
  final int typeId = 11;

  @override
  ShangInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShangInfoModel(
      id: fields[0] as String,
      shangId: fields[1] as String,
      line: fields[2] as String?,
      weixin: fields[3] as String?,
      fecebook: fields[4] as String?,
      instart: fields[5] as String?,
      kaotalkStory: fields[6] as String?,
      website: fields[7] as String?,
      gongshang: fields[8] as String?,
      gongshangPic: fields[9] as String?,
      d: fields[10] as String?,
      kaotalk_key: fields[12] as String?,
      kaotalk_sn: fields[11] as String?,
      hao: fields[13] as String,
      kaotalk: fields[14] as String?,
      logo: fields[15] as String?,
      brand: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ShangInfoModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.shangId)
      ..writeByte(2)
      ..write(obj.line)
      ..writeByte(3)
      ..write(obj.weixin)
      ..writeByte(4)
      ..write(obj.fecebook)
      ..writeByte(5)
      ..write(obj.instart)
      ..writeByte(6)
      ..write(obj.kaotalkStory)
      ..writeByte(7)
      ..write(obj.website)
      ..writeByte(8)
      ..write(obj.gongshang)
      ..writeByte(9)
      ..write(obj.gongshangPic)
      ..writeByte(10)
      ..write(obj.d)
      ..writeByte(11)
      ..write(obj.kaotalk_sn)
      ..writeByte(12)
      ..write(obj.kaotalk_key)
      ..writeByte(13)
      ..write(obj.hao)
      ..writeByte(14)
      ..write(obj.kaotalk)
      ..writeByte(15)
      ..write(obj.logo)
      ..writeByte(16)
      ..write(obj.brand);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShangInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
