import 'package:hive/hive.dart';
part 'zhiyuanModel.g.dart';
@HiveType(typeId: 30)
class ZhiYuanModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String phone;
  @HiveField(3)
  String password;
  @HiveField(4)
  String quanxian;
  @HiveField(5)
  String age;
  @HiveField(6)
  String job;
  @HiveField(7)
  String ok;
  @HiveField(8)
  String time;
  @HiveField(9)
  String weixin;
  @HiveField(10)
  String xingbie;
  @HiveField(11)
  String add;
  @HiveField(12)
  String show;
  @HiveField(13)
  String pic;

  ZhiYuanModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.password,
    required this.quanxian,
    required this.age,
    required this.job,
    required this.ok,
    required this.time,
    required this.weixin,
    required this.xingbie,
    required this.add,
    required this.show,
    required this.pic,
  });
}
