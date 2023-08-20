
import 'package:hive/hive.dart';

part 'danjuModel.g.dart';
@HiveType(typeId: 24)
class DanjuModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String cid;
  @HiveField(2)
  String sn;
  @HiveField(3)
  String uuid;
  @HiveField(4)
  String shang;
  @HiveField(5)
  String lou;
  @HiveField(6)
  String hao;
  @HiveField(7)
  String netpic;
  @HiveField(8)
  String time;
  @HiveField(9)
  String zzid;

  DanjuModel({
    required this.id,
    required this.cid,
    required this.sn,
    required this.uuid,
    required this.shang,
    required this.lou,
    required this.hao,
    required this.time,
    required this.netpic,
    required this.zzid,

});

}
