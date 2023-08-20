
import 'package:hive/hive.dart';

part 'caiGoudanModel.g.dart';

@HiveType(typeId: 4)
class CaiGouDanModel {
  @HiveField(0)
  String cid;
  @HiveField(1)
  String oid;
  @HiveField(2)
  String uid;
  @HiveField(3)
  String sn;
  @HiveField(4)
  String shang;
  @HiveField(5)
  String lou;
  @HiveField(6)
  String hao;
  @HiveField(7)
  String zhuangtai;
  @HiveField(8)
  String num;
  @HiveField(9)
  String yunum;
  @HiveField(10)
  String price;
  @HiveField(11)
  String oknum;
  @HiveField(12)
  String overnum;
  @HiveField(13)
  String yifunum;
  @HiveField(14)
  String wentinum;
  @HiveField(15)
  String yifubeizhu;
  @HiveField(16)
  String weisongbeizhu;
  @HiveField(17)
  String wentibeizhu;
  @HiveField(18)
  String guige;
  @HiveField(19)
  String data;
  @HiveField(20)
  String caigoutime;
  @HiveField(21)
  String chuhuori;
  @HiveField(22)
  String dan;
  @HiveField(23)
  String beizhu;
  @HiveField(24)
  String pic;
  @HiveField(25)
  String zid;
  @HiveField(26)
  String qriqi;
  @HiveField(27)
  String daifu;
  @HiveField(28)
  String dd;
  @HiveField(29)
  String local;
  @HiveField(30)
  String luguo;
  @HiveField(31)
  String? overbeizhu;
  @HiveField(32)
  String? needbuy;
  @HiveField(33)
  String? user;
  @HiveField(34)
  String? show;
  @HiveField(35)
  String? tuid;
  @HiveField(36)
  String? tuijin;
  @HiveField(37)
  String? save;
  @HiveField(38)
  String? lid;
  @HiveField(39)
  String? huifu;
  @HiveField(40)
  String? weichu;
  @HiveField(41)
  String? orderTime;

  CaiGouDanModel({
    required this.cid,
    required this.oid,
    required this.uid,
    required this.sn,
    required this.shang,
    required this.lou,
    required this.hao,
    required this.zhuangtai,
    required this.yunum,
    required this.price,
    required this.oknum,
    required this.overnum,
    required this.yifunum,
    required this.wentinum,
    required this.yifubeizhu,
    required this.weisongbeizhu,
    required this.wentibeizhu,
    required this.guige,
    required this.data,
    required this.caigoutime,
    required this.chuhuori,
    required this.dan,
    required this.beizhu,
    required this.pic,
    required this.zid,
    required this.qriqi,
    required this.daifu,
    required this.dd,
    required this.num,
    required this.local,
    required this.luguo,
     this.overbeizhu,
    this.needbuy,
    this.user,
    this.show,
    this.tuid,
    this.tuijin,
    this.save,
    this.lid,
    this.huifu,
    this.weichu,
    this.orderTime

  });
}
