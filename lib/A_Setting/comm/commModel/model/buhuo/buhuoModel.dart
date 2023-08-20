import 'package:hive/hive.dart';
part 'buhuoModel.g.dart';
@HiveType(typeId: 23)
class BuhuoModel {
  @HiveField(0)
  String pic;
  @HiveField(1)
  String shang;
  @HiveField(2)
  String lou;
  @HiveField(3)
  String hao;
  @HiveField(4)
  String price;
  @HiveField(5)
  String num;
  @HiveField(6)
  String? beizhu;
  @HiveField(7)
  String? guige;
  @HiveField(8)
  String? size;
  @HiveField(9)
  String? color;


  BuhuoModel({
    required this.pic,
    required this.shang,
    required this.lou,
    required this.hao,
    required this.price,
    this.beizhu,
    required this.num,
    required this.guige,
    this.color,
    this.size,

  });
}
