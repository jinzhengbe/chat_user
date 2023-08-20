// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caigoudan_tempModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CaigoudanTempModelAdapter extends TypeAdapter<CaigoudanTempModel> {
  @override
  final int typeId = 12;

  @override
  CaigoudanTempModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CaigoudanTempModel(
      hao: fields[19] as String,
      lou: fields[18] as String,
      shang: fields[17] as String,
      cid: fields[1] as String,
      uid: fields[3] as String,
      tt: fields[15] as String,
      oid: fields[0] as String,
      zid: fields[2] as String,
      pic: fields[16] as String,
      price: fields[20] as String,
      okbeizhu: fields[4] as String,
      luguobeizhu: fields[7] as String,
      wentibeizhu: fields[8] as String,
      overbeizhu: fields[6] as String,
      yifubeizhu: fields[5] as String,
      over: fields[13] as int,
      daofu: fields[14] as int,
      daofubeizhu: fields[9] as String,
      ok: fields[11] as int,
      total: fields[10] as int,
      yifu: fields[12] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CaigoudanTempModel obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.oid)
      ..writeByte(1)
      ..write(obj.cid)
      ..writeByte(2)
      ..write(obj.zid)
      ..writeByte(3)
      ..write(obj.uid)
      ..writeByte(4)
      ..write(obj.okbeizhu)
      ..writeByte(5)
      ..write(obj.yifubeizhu)
      ..writeByte(6)
      ..write(obj.overbeizhu)
      ..writeByte(7)
      ..write(obj.luguobeizhu)
      ..writeByte(8)
      ..write(obj.wentibeizhu)
      ..writeByte(9)
      ..write(obj.daofubeizhu)
      ..writeByte(10)
      ..write(obj.total)
      ..writeByte(11)
      ..write(obj.ok)
      ..writeByte(12)
      ..write(obj.yifu)
      ..writeByte(13)
      ..write(obj.over)
      ..writeByte(14)
      ..write(obj.daofu)
      ..writeByte(15)
      ..write(obj.tt)
      ..writeByte(16)
      ..write(obj.pic)
      ..writeByte(17)
      ..write(obj.shang)
      ..writeByte(18)
      ..write(obj.lou)
      ..writeByte(19)
      ..write(obj.hao)
      ..writeByte(20)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CaigoudanTempModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
