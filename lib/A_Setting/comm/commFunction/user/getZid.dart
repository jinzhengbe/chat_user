import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';import 'package:chat_user/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

getZid(context) async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _zid = getuid.getString('zid');
  if (_zid == null || _zid == '') {
    Navigator.push(context, TiaoZhuan(LoginPage()));
  } else {
    return _zid;
  }
}

getQuanxian(context) async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _quan = getuid.getString('quanxian');

  if (_quan == null || _quan == '') {
     return 'caigou';
  } else {
    return _quan;
  }
}
