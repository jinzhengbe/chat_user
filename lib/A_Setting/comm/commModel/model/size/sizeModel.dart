
import 'package:hive/hive.dart';
part 'sizeModel.g.dart';
@HiveType(typeId: 19)

class SizeModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String fenlei;
  @HiveField(2)
  String size;

  SizeModel({required this.id, required this.size, required this.fenlei});
}
