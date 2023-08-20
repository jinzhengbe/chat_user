import 'package:hive/hive.dart';

part 'shanginfoModel.g.dart';

@HiveType(typeId: 11)
class ShangInfoModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String shangId;
  @HiveField(2)
  String? line;
  @HiveField(3)
  String? weixin;
  @HiveField(4)
  String? fecebook;
  @HiveField(5)
  String? instart;
  @HiveField(6)
  String? kaotalkStory;
  @HiveField(7)
  String? website;
  @HiveField(8)
  String? gongshang;
  @HiveField(9)
  String? gongshangPic;
  @HiveField(10)
  String? d;
  @HiveField(11)
  String? kaotalk_sn;
  @HiveField(12)
  String? kaotalk_key;
  @HiveField(13)
  String hao;
  @HiveField(14)
  String? kaotalk;
  @HiveField(15)
  String? logo;
  @HiveField(16)
  String? brand;

  ShangInfoModel(
      {required this.id,
      required this.shangId,
      this.line,
      this.weixin,
      this.fecebook,
      this.instart,
      this.kaotalkStory,
      this.website,
      this.gongshang,
      this.gongshangPic,
      this.d,
      this.kaotalk_key,
      this.kaotalk_sn,
      required this.hao,
       this.kaotalk,
      this.logo,
      this.brand});
}
