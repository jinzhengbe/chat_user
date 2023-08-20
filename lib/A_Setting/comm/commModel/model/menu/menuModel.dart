import 'package:hive/hive.dart';
part 'menuModel.g.dart';

@HiveType(typeId: 50)
class menuModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  String icon;
  @HiveField(2)
  itemModel item;

  menuModel({required this.title, required this.icon, required this.item});

  factory menuModel.fromJson(Map<String, dynamic> json) {
    return menuModel(
      title: json['title'],
      icon: json['icon'],
      item: itemModel.fromJson(json['item']),
    );
  }
}

class itemModel {
  String name;

  String page;

  String quanxian;

  String type;

  String num;
  String? icon;

  itemModel(
      {required this.name,
      required this.page,
      required this.quanxian,
      required this.type,
      this.icon,
      required this.num});

  factory itemModel.fromJson(Map<String, dynamic> json) {
    return itemModel(
      name: json['name'],
      page: json['page'],
      type: json['type'],
      num: json['num'],
      quanxian: json['quanxian'],
      icon: json['icon'],
    );
  }
}
