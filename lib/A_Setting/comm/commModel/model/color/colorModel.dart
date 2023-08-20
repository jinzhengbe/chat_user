import 'package:hive/hive.dart';

part 'colorModel.g.dart';

@HiveType(typeId: 16)
class colorModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String color;
  @HiveField(2)
  String colorkr;
  @HiveField(3)
  String colorcn;
  @HiveField(4)
  String krlei;
  @HiveField(5)
  String cnlie;
  @HiveField(6)
  String lei;


  colorModel(
      {required this.id,
      required this.lei,
      required this.color,
      required this.cnlie,
      required this.colorcn,
      required this.colorkr,
      required this.krlei});
}
