import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'getUser_cc.dart';

addDataToBox(dd) async {
  var box = await Hive.openBox<UserModel>('user');
  await box.clear();
  SharedPreferences getuid = await SharedPreferences.getInstance();
  for (var a in dd) {
    var _ff = await _checkUserBox(a['id']);
    if (_ff == true) {
      await _addBox(a);
      var _maxid = getuid.getString('maxUid');
      if (_maxid == null || _maxid == '') {
        _maxid = '0';
      }
      var _id = a['id'];
      if (int.parse(_id) > int.parse(_maxid)) {
        await getuid.setString('maxUid', a['id']);
        _maxid = _id;
      }
    }
  }
}

_checkUserBox(_id) async {
  var box = await Hive.openBox<UserModel>('user');
  if ( box.length == 0) {
    return true;
  } else {
    for (var i = 0; i < box.length; i++) {
      if (box.getAt(i)!.id == _id) {
        await box.deleteAt(i);
      }
    }
    return true;
  }
}

_addBox(a) async {
  var box = await Hive.openBox<UserModel>('user');
  var _cc = await getUser_cc(a);
  if ( box.length == 0) {
    await box.put('0', _cc);
  } else {
    int id = box.length + 1;
    await box.put(id.toString(), _cc);
  }
}
