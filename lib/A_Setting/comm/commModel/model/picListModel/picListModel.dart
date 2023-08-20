import 'package:hive/hive.dart';
part 'picListModel.g.dart';

//@JsonSerializable()
@HiveType(typeId: 60)
class PicListModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String oid;
  @HiveField(2)
  String pic;
  @HiveField(3)
  String? pid;
  @HiveField(4)
  String? localPic;

  @HiveType(typeId: 60)
  PicListModel(
      {required this.id, required this.oid, required this.pic, this.pid,this.localPic});
}
