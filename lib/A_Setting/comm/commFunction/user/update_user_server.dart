
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import '../../commModel/model/user/userModel.dart';
import 'getUser_cc.dart';

updateUser(url) async {
  Dio dio = Dio();

  try {
    var ff = await dio.get(url);
    var dd = jsonDecode(ff.data);
    if (dd == 0 || dd == '0') {
    } else {
      for (var a in dd) {
        var gg = await checkUser(a);
        if (gg == true) {
          await add_user_box(a);
        }
      }
    }
  } catch (e) {}
}

add_user_box(a) async {
  var _cc = await getUser_cc(a);

  var box = await Hive.openBox<UserModel>('user');
  if ( box.length == 0) {
    await box.put('0', _cc);
  } else {
    await box.put((box.length + 1).toString(), _cc);
  }
}

checkUser(a) async {
  var box = await Hive.openBox<UserModel>('user');
  if ( box.length == 0) {
    return true;
  } else {
    for (var i = 0; i < box.length; i++) {
      var _uid = box.getAt(i)!.id;
      if (a == _uid) {
        box.deleteAt(i);
        return true;
      }
    }

    return true;
  }
}
