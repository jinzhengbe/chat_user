
import 'package:hive/hive.dart';

part 'caigoudan_tempModel.g.dart';
@HiveType(typeId: 12)

class CaigoudanTempModel{

  @HiveField(0)
  String oid;
  @HiveField(1)
  String cid;
  @HiveField(2)
  String zid;
  @HiveField(3)
  String uid;
  @HiveField(4)
  String okbeizhu;
  @HiveField(5)
  String yifubeizhu;
  @HiveField(6)
  String overbeizhu;
  @HiveField(7)
  String luguobeizhu;
  @HiveField(8)
  String wentibeizhu;
  @HiveField(9)
  String daofubeizhu;
  @HiveField(10)
  int total;
  @HiveField(11)
  int ok;
  @HiveField(12)
  int yifu;
  @HiveField(13)
  int over;
  @HiveField(14)
  int daofu;
  @HiveField(15)
  String tt;
  @HiveField(16)
  String pic;
  @HiveField(17)
  String shang;
  @HiveField(18)
  String lou;
  @HiveField(19)
  String hao;
  @HiveField(20)
  String price;


  CaigoudanTempModel({
    required this.hao,
    required this.lou,
  required this.shang,
  required this.cid,
  required this.uid,
  required this.tt,
  required this.oid,
  required this.zid,
  required this.pic,
  required this.price,
  required this.okbeizhu,
  required this.luguobeizhu,
  required this.wentibeizhu,
  required this.overbeizhu,
  required this.yifubeizhu,
  required this.over,
  required this.daofu,
  required this.daofubeizhu,
  required this.ok,
  required this.total,
  required this.yifu
});



}