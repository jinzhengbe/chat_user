// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 5;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as String,
      name: fields[1] as String,
      username: fields[2] as String,
      password: fields[3] as String,
      dd: fields[4] as String,
      phone: fields[5] as String,
      guojia: fields[6] as String,
      daifu: fields[8] as String,
      yunfei: fields[9] as String,
      email: fields[10] as String,
      pic: fields[11] as String,
      gonghao: fields[12] as String,
      gongshang: fields[13] as String,
      time: fields[14] as String,
      lang: fields[15] as String,
      lev: fields[16] as String,
      openid: fields[17] as String,
      shen: fields[18] as String,
      ustow: fields[19] as String,
      uuid: fields[20] as String,
      sns: fields[21] as String,
      snsid: fields[22] as String,
      snsname: fields[23] as String,
      snstoken: fields[24] as String,
      fav: fields[25] as String,
      daigou: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.dd)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.guojia)
      ..writeByte(7)
      ..write(obj.daigou)
      ..writeByte(8)
      ..write(obj.daifu)
      ..writeByte(9)
      ..write(obj.yunfei)
      ..writeByte(10)
      ..write(obj.email)
      ..writeByte(11)
      ..write(obj.pic)
      ..writeByte(12)
      ..write(obj.gonghao)
      ..writeByte(13)
      ..write(obj.gongshang)
      ..writeByte(14)
      ..write(obj.time)
      ..writeByte(15)
      ..write(obj.lang)
      ..writeByte(16)
      ..write(obj.lev)
      ..writeByte(17)
      ..write(obj.openid)
      ..writeByte(18)
      ..write(obj.shen)
      ..writeByte(19)
      ..write(obj.ustow)
      ..writeByte(20)
      ..write(obj.uuid)
      ..writeByte(21)
      ..write(obj.sns)
      ..writeByte(22)
      ..write(obj.snsid)
      ..writeByte(23)
      ..write(obj.snsname)
      ..writeByte(24)
      ..write(obj.snstoken)
      ..writeByte(25)
      ..write(obj.fav);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
