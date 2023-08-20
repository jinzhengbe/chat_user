
import 'package:hive/hive.dart';
part 'caiGouListModel.g.dart';

@HiveType(typeId: 13)
class CaiGouListModel {
  @HiveField(0)
  String lid;
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
  String fa;
  @HiveField(8)
  String num;

  @HiveField(9)
  String qu;
  @HiveField(10)
  String price;

  @HiveField(11)
  String oknum;
  @HiveField(12)
  String overnum;
  @HiveField(13)
  String okbeizhu;
  @HiveField(14)
  String yifunum;
  @HiveField(15)
  String wentinum;
  @HiveField(16)
  String yifubeizhu;
  @HiveField(17)
  String overbeizhu;
  @HiveField(18)
  String weichu;
  @HiveField(19)
  String payid;
  @HiveField(20)
  String daifu;
  @HiveField(21)
  String beizhu;
  @HiveField(22)
  String wentibeizhu;
  @HiveField(23)
  String luguobeizhu;
  @HiveField(24)
  String churiqi;
  @HiveField(25)
  String time;
  @HiveField(26)
  String tuid;
  @HiveField(27)
  String tuijin;
  @HiveField(28)
  String oldyunum;
  @HiveField(29)
  String dd;
  @HiveField(30)
  String zid;
  @HiveField(31)
  String pid;
  @HiveField(32)
  String table;
  @HiveField(33)
  String foxtime;
  @HiveField(34)
  String pic;
  @HiveField(35)
  String foxuid;
  @HiveField(36)
  String cfoxtime;
  @HiveField(37)
  String data;
  @HiveField(38)
  String qriqi;
  @HiveField(39)
  String kr;
  @HiveField(40)
  String cid;

  @HiveField(41)
  String ru;
  @HiveField(42)
  String pname;
  @HiveField(43)
  String daifa;
  @HiveField(44)
  String update;
  @HiveField(45)
  String? local;
  @HiveField(46)
  String? hei;
  @HiveField(47)
  String? dan;

  CaiGouListModel(
      {required this.lid,
      required this.oid,
      required this.uid,
      required this.sn,
      required this.shang,
      required this.lou,
      required this.hao,
      required this.num,
      required this.qu,
      required this.price,
      required this.oknum,
      required this.overnum,
      required this.okbeizhu,
      required this.yifunum,
      required this.wentinum,
      required this.yifubeizhu,
      required this.overbeizhu,
      required this.weichu,
      required this.payid,
      required this.daifu,
      required this.beizhu,
      required this.wentibeizhu,
      required this.luguobeizhu,
      required this.churiqi,
      required this.time,
      required this.tuid,
      required this.tuijin,
      required this.oldyunum,
      required this.dd,
      required this.zid,
      required this.pid,
      required this.table,
      required this.foxtime,
      required this.pic,
      required this.foxuid,
      required this.cfoxtime,
      required this.data,
      required this.qriqi,
      required this.kr,
      required this.cid,
      required this.ru,
      required this.pname,
      required this.daifa,
      required this.fa,
      required this.update,
      this.local,
        this.dan,
      this.hei});


}
