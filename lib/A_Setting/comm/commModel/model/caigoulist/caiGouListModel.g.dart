// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../A_Setting/comm/commModel/model/caigoulist/caiGouListModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CaiGouListModelAdapter extends TypeAdapter<CaiGouListModel> {
  @override
  final int typeId = 13;

  @override
  CaiGouListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CaiGouListModel(
      lid: fields[0] as String,
      oid: fields[1] as String,
      uid: fields[2] as String,
      sn: fields[3] as String,
      shang: fields[4] as String,
      lou: fields[5] as String,
      hao: fields[6] as String,
      num: fields[8] as String,
      qu: fields[9] as String,
      price: fields[10] as String,
      oknum: fields[11] as String,
      overnum: fields[12] as String,
      okbeizhu: fields[13] as String,
      yifunum: fields[14] as String,
      wentinum: fields[15] as String,
      yifubeizhu: fields[16] as String,
      overbeizhu: fields[17] as String,
      weichu: fields[18] as String,
      payid: fields[19] as String,
      daifu: fields[20] as String,
      beizhu: fields[21] as String,
      wentibeizhu: fields[22] as String,
      luguobeizhu: fields[23] as String,
      churiqi: fields[24] as String,
      time: fields[25] as String,
      tuid: fields[26] as String,
      tuijin: fields[27] as String,
      oldyunum: fields[28] as String,
      dd: fields[29] as String,
      zid: fields[30] as String,
      pid: fields[31] as String,
      table: fields[32] as String,
      foxtime: fields[33] as String,
      pic: fields[34] as String,
      foxuid: fields[35] as String,
      cfoxtime: fields[36] as String,
      data: fields[37] as String,
      qriqi: fields[38] as String,
      kr: fields[39] as String,
      cid: fields[40] as String,
      ru: fields[41] as String,
      pname: fields[42] as String,
      daifa: fields[43] as String,
      fa: fields[7] as String,
      update: fields[44] as String,
      local: fields[45] as String?,
      dan: fields[47] as String?,
      hei: fields[46] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CaiGouListModel obj) {
    writer
      ..writeByte(48)
      ..writeByte(0)
      ..write(obj.lid)
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
      ..write(obj.fa)
      ..writeByte(8)
      ..write(obj.num)
      ..writeByte(9)
      ..write(obj.qu)
      ..writeByte(10)
      ..write(obj.price)
      ..writeByte(11)
      ..write(obj.oknum)
      ..writeByte(12)
      ..write(obj.overnum)
      ..writeByte(13)
      ..write(obj.okbeizhu)
      ..writeByte(14)
      ..write(obj.yifunum)
      ..writeByte(15)
      ..write(obj.wentinum)
      ..writeByte(16)
      ..write(obj.yifubeizhu)
      ..writeByte(17)
      ..write(obj.overbeizhu)
      ..writeByte(18)
      ..write(obj.weichu)
      ..writeByte(19)
      ..write(obj.payid)
      ..writeByte(20)
      ..write(obj.daifu)
      ..writeByte(21)
      ..write(obj.beizhu)
      ..writeByte(22)
      ..write(obj.wentibeizhu)
      ..writeByte(23)
      ..write(obj.luguobeizhu)
      ..writeByte(24)
      ..write(obj.churiqi)
      ..writeByte(25)
      ..write(obj.time)
      ..writeByte(26)
      ..write(obj.tuid)
      ..writeByte(27)
      ..write(obj.tuijin)
      ..writeByte(28)
      ..write(obj.oldyunum)
      ..writeByte(29)
      ..write(obj.dd)
      ..writeByte(30)
      ..write(obj.zid)
      ..writeByte(31)
      ..write(obj.pid)
      ..writeByte(32)
      ..write(obj.table)
      ..writeByte(33)
      ..write(obj.foxtime)
      ..writeByte(34)
      ..write(obj.pic)
      ..writeByte(35)
      ..write(obj.foxuid)
      ..writeByte(36)
      ..write(obj.cfoxtime)
      ..writeByte(37)
      ..write(obj.data)
      ..writeByte(38)
      ..write(obj.qriqi)
      ..writeByte(39)
      ..write(obj.kr)
      ..writeByte(40)
      ..write(obj.cid)
      ..writeByte(41)
      ..write(obj.ru)
      ..writeByte(42)
      ..write(obj.pname)
      ..writeByte(43)
      ..write(obj.daifa)
      ..writeByte(44)
      ..write(obj.update)
      ..writeByte(45)
      ..write(obj.local)
      ..writeByte(46)
      ..write(obj.hei)
      ..writeByte(47)
      ..write(obj.dan);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CaiGouListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
