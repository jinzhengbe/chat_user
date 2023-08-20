import 'package:hive/hive.dart';

part 'sizeListModel.g.dart';

@HiveType(typeId: 9)
class SizeListModel {

  @HiveField(0)
  String size;
  @HiveField(1)
  String? fav;

  SizeListModel({required this.size, this.fav});
}
