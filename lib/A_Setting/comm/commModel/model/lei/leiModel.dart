
import 'package:hive/hive.dart';
part 'leiModel.g.dart';
@HiveType(typeId: 18)


class leiModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String fenleia;
  @HiveField(2)
  String fenleiachina;
  @HiveField(3)
  String fenlei;
  @HiveField(4)
  String fenleichina;

  leiModel(
      {required this.id,
      required this.fenlei,
      required this.fenleia,
      required this.fenleiachina,
      required this.fenleichina});
}
