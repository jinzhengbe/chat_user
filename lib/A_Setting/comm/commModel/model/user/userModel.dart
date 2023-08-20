import 'package:hive/hive.dart';

part 'userModel.g.dart';

@HiveType(typeId: 5)
class UserModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String username;
  @HiveField(3)
  String password;
  @HiveField(4)
  String dd;
  @HiveField(5)
  String phone;
  @HiveField(6)
  String guojia;
  @HiveField(7)
  String daigou;
  @HiveField(8)
  String daifu;
  @HiveField(9)
  String yunfei;
  @HiveField(10)
  String email;
  @HiveField(11)
  String pic;
  @HiveField(12)
  String gonghao;
  @HiveField(13)
  String gongshang;
  @HiveField(14)
  String time;
  @HiveField(15)
  String lang;
  @HiveField(16)
  String lev;
  @HiveField(17)
  String openid;
  @HiveField(18)
  String shen;
  @HiveField(19)
  String ustow;
  @HiveField(20)
  String uuid;
  @HiveField(21)
  String sns;
  @HiveField(22)
  String snsid;
  @HiveField(23)
  String snsname;
  @HiveField(24)
  String snstoken;
  @HiveField(25)
  String fav;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.password,
      required this.dd,
      required this.phone,
      required this.guojia,
      required this.daifu,
      required this.yunfei,
      required this.email,
      required this.pic,
      required this.gonghao,
      required this.gongshang,
      required this.time,
      required this.lang,
      required this.lev,
      required this.openid,
      required this.shen,
      required this.ustow,
      required this.uuid,
      required this.sns,
      required this.snsid,
      required this.snsname,
      required this.snstoken,
      required this.fav,
  required this.daigou
      });
}
