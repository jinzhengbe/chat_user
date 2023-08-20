import 'package:chat_user/A_Setting/comm/commModel/model/buhuo/buhuoModel.dart';
import 'package:hive/hive.dart';


checkBoxPic(pic_) async {
  final box = await Hive.openBox<BuhuoModel>('buhuo');

  if (box.length == 0) {
  } else {
    for (var i = 0; i < box.length; i++) {
      var _pic = box.getAt(i)!.pic;
      if (pic_ == _pic) {
        box.deleteAt(i);
        return;
      }
    }
  }
}