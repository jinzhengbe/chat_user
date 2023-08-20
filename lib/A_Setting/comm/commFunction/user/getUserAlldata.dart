
import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';
import 'package:hive_flutter/adapters.dart';


geUserAllData(a) async {
  var box = await Hive.openBox<UserModel>('user');
  if ( box.length == 0) {
    return false;
  } else {
    for (var i = 0; i < box.length; i++) {
      var _id = box.getAt(i)!.id;
      if (_id == a) {
        return box.getAt(i);
      }
    }
  }
  return false;
}
