

import 'package:hive/hive.dart';

part 'shangModel.g.dart';
@HiveType(typeId: 20)
class ShangModel{
  @HiveField(0)
  String id;
  @HiveField(1)
  String shang;
  @HiveField(2)
  String? brand;
  @HiveField(3)
  String lou;

  ShangModel({
    required this.id,
    required this.shang,
    required this.lou,
    this.brand

  });


}