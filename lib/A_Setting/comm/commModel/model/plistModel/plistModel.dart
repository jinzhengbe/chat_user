import 'package:hive/hive.dart';
part 'plistModel.g.dart';

@HiveType(typeId: 31)
class PlistModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String shang;
  @HiveField(2)
  String lou;
  @HiveField(3)
  String hao;
  @HiveField(4)
  String price;
  @HiveField(7)
  String num;
  @HiveField(8)
  String uid;
  @HiveField(12)
  String pic;
  @HiveField(13)
  String guige;
  @HiveField(14)
  String beizhu;

  PlistModel(
      {required this.id,
      required this.shang,
      required this.lou,
      required this.hao,
      required this.price,
      required this.pic,
      required this.num,
      required this.guige,
      required this.beizhu,
      required this.uid
      });
}
