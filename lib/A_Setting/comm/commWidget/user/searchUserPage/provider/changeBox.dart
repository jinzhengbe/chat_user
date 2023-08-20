
import 'package:chat_user/A_Setting/comm/commFunction/user/getUser_cc.dart';
import 'package:hive/hive.dart';

import '../../../../commModel/model/user/userModel.dart';
changeBox(aa) async {
  var box = await Hive.openBox<UserModel>('user');

  var _id = aa.id;
  for (var i = 0; i < box.length; i++) {
    if (box.getAt(i)!.id == _id) {
      var _cc = await getUser_cc_list(aa);
      await box.deleteAt(i);
      int id = box.length+1;
      await box.put(id.toString(), _cc);
      return;
    }
  }
}
