
import 'package:hive/hive.dart';
part 'buyInfoModel.g.dart';

@HiveType(typeId: 3)
class BuyInfoModel {

  @HiveField(0)
  String id;
  @HiveField(1)
  String shang;
  @HiveField(2)
  String lou;
  @HiveField(3)
  String hao;
  @HiveField(4)
  String start;
  @HiveField(5)
  String end;
  @HiveField(6)
  String uid;
  @HiveField(7)
  String zhunbeijin;
  @HiveField(8)
  String data;
  @HiveField(9)
  String jiesuanri;

  BuyInfoModel({
    required this.id,
    required this.shang,
    required this.lou,
    required this.hao,
    required this.start,
    required this.end,
    required this.uid,
    required this.zhunbeijin,
    required this.data,
    required this.jiesuanri,
});


}