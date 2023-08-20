import 'dart:convert';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/goHome_close_All.dart';
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_user/generated/l10n.dart';

import '../A_Setting/server.dart';

class LoginProvider extends ChangeNotifier {
  LoginProvider(context) {
    tryLogin(context);
  }

  tryLogin(context) async {
    SharedPreferences getuid = await SharedPreferences.getInstance();

    var _name = getuid.getString('uname');
    var _pass = getuid.getString('password');
    if (_name == null || _pass == null) {
    } else {
      _userId = _name;
      _passWrod = _pass;
      await login(context);
    }
  }

  String _userId = '';

  String get userId => _userId;

  String _passWrod = '';

  String get passWrod => _passWrod;

  final bool _showLang = false;

  bool get showLang => _showLang;
  Dio dio = Dio();

  bool _loadding = false;

  bool get loadding => _loadding;

  setUserPassword(t) {
    _passWrod = t;
    notifyListeners();
  }

  setUserId(t) {
    _userId = t;
    notifyListeners();
  }

  login(context) async {
    _loadding = true;
    notifyListeners();
    var uu = mainServer +
        'Login/user_login?phone=' +
        _userId.trim() +
        '&password=' +
        _passWrod.trim();

    await dio.get(uu).then((value) async {
      var da = jsonDecode(value.data);

      if (da == 0 || da == '0') {
        showToastView(S().login_passwd_username_error, context, 'center');
        _loadding = false;
        notifyListeners();
      } else {
        await saveInfo(_userId, da);
        await goHome_close_all(context);
      }
    });
  }

  saveInfo(userId, da) async {
    var _uid = da[0]['id'].toString();
    SharedPreferences getuid = await SharedPreferences.getInstance();
    await getuid.setString('zid', _uid);
    await getuid.setString('zname', da[0]['name']);
    await getuid.setString('uname', userId.trim());
    await getuid.setString('password', da[0]['password']);
    await getuid.setString('quanxian', da[0]['quanxian']);
  }
}
