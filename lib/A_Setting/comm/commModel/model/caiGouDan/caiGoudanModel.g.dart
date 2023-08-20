// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/caiGouDan/caiGoudanModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CaiGouDanModelAdapter extends TypeAdapter<CaiGouDanModel> {
  @override
  final int typeId = 4;

  @override
  CaiGouDanModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CaiGouDanModel(
      cid: fields[0] as String,
      oid: fields[1] as String,
      uid: fields[2] as String,
      sn: fields[3] as String,
      shang: fields[4] as String,
      lou: fields[5] as String,
      hao: fields[6] as String,
      zhuangtai: fields[7] as String,
      yunum: fields[9] as String,
      price: fields[10] as String,
      oknum: fields[11] as String,
      overnum: fields[12] as String,
      yifunum: fields[13] as String,
      wentinum: fields[14] as String,
      yifubeizhu: fields[15] as String,
      weisongbeizhu: fields[16] as String,
      wentibeizhu: fields[17] as String,
      guige: fields[18] as String,
      data: fields[19] as String,
      caigoutime: fields[20] as String,
      chuhuori: fields[21] as String,
      dan: fields[22] as String,
      beizhu: fields[23] as String,
      pic: fields[24] as String,
      zid: fields[25] as String,
      qriqi: fields[26] as String,
      daifu: fields[27] as String,
      dd: fields[28] as String,
      num: fields[8] as String,
      local: fields[29] as String,
      luguo: fields[30] as String,
      overbeizhu: fields[31] as String?,
      needbuy: fields[32] as String?,
      user: fields[33] as String?,
      show: fields[34] as String?,
      tuid: fields[35] as String?,
      tuijin: fields[36] as String?,
      save: fields[37] as String?,
      lid: fields[38] as String?,
      huifu: fields[39] as String?,
      weichu: fields[40] as String?,
      orderTime: fields[41] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CaiGouDanModel obj) {
    writer
      ..writeByte(42)
      ..writeByte(0)
      ..write(obj.cid)
      ..writeByte(1)
      ..write(obj.oid)
      ..writeByte(2)
      ..write(obj.uid)
      ..writeByte(3)
      ..write(obj.sn)
      ..writeByte(4)
      ..write(obj.shang)
      ..writeByte(5)
      ..write(obj.lou)
      ..writeByte(6)
      ..write(obj.hao)
      ..writeByte(7)
      ..write(obj.zhuangtai)
      ..writeByte(8)
      ..write(obj.num)
      ..writeByte(9)
      ..write(obj.yunum)
      ..writeByte(10)
      ..write(obj.price)
      ..writeByte(11)
      ..write(obj.oknum)
      ..writeByte(12)
      ..write(obj.overnum)
      ..writeByte(13)
      ..write(obj.yifunum)
      ..writeByte(14)
      ..write(obj.wentinum)
      ..writeByte(15)
      ..write(obj.yifubeizhu)
      ..writeByte(16)
      ..write(obj.weisongbeizhu)
      ..writeByte(17)
      ..write(obj.wentibeizhu)
      ..writeByte(18)
      ..write(obj.guige)
      ..writeByte(19)
      ..write(obj.data)
      ..writeByte(20)
      ..write(obj.caigoutime)
      ..writeByte(21)
      ..write(obj.chuhuori)
      ..writeByte(22)
      ..write(obj.dan)
      ..writeByte(23)
      ..write(obj.beizhu)
      ..writeByte(24)
      ..write(obj.pic)
      ..writeByte(25)
      ..write(obj.zid)
      ..writeByte(26)
      ..write(obj.qriqi)
      ..writeByte(27)
      ..write(obj.daifu)
      ..writeByte(28)
      ..write(obj.dd)
      ..writeByte(29)
      ..write(obj.local)
      ..writeByte(30)
      ..write(obj.luguo)
      ..writeByte(31)
      ..write(obj.overbeizhu)
      ..writeByte(32)
      ..write(obj.needbuy)
      ..writeByte(33)
      ..write(obj.user)
      ..writeByte(34)
      ..write(obj.show)
      ..writeByte(35)
      ..write(obj.tuid)
      ..writeByte(36)
      ..write(obj.tuijin)
      ..writeByte(37)
      ..write(obj.save)
      ..writeByte(38)
      ..write(obj.lid)
      ..writeByte(39)
      ..write(obj.huifu)
      ..writeByte(40)
      ..write(obj.weichu)
      ..writeByte(41)
      ..write(obj.orderTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CaiGouDanModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
