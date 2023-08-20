import 'dart:convert';
import 'package:chat_user/A_Setting/server.dart';
import 'package:chat_user/A_Setting/comm/commFunction/user/getUserData.dart';

import 'changeBox.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/generated/l10n.dart';

import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';
class SearchUserProvider extends ChangeNotifier {
  SearchUserProvider(context) {
    getmainServerData();
    getFaveUser(context);
  }

  bool _loadding = false;

  bool get loadding => _loadding;

  bool _shouFav = true;

  bool get shouFav => _shouFav;

  List _favUserList = [];

  List get favUserList => _favUserList;

  List _searchedList = [];

  List get searchedList => _searchedList;

  TextEditingController _contC = TextEditingController();

  TextEditingController get contC => _contC;

  Dio dio = Dio();
  bool _sisposed = false;

  @override
  notifyListeners() {
    if (!_sisposed) {
      super.notifyListeners();
    }
  }


  @override
  void dispose() {
    super.dispose();
    _contC.dispose();
    _sisposed = true;
  }


  setFave(aa, context) async {
    var _fav = aa.fav;
    if (_fav == '1') {
      aa.fav = '0';
    } else {
      aa.fav = '1';
    }

    await changeToServer(aa, context);
  }

  changeToServer(aa, context) async {
    var url = mainServer +
        "NewUser/setFav?id=" +
        aa.id +
        '&fav=' +
        aa.fav;
    
    await dio.get(url).then((v) async {
      var dd = jsonDecode(v.data);
      if (dd == '1' || dd == 1) {
        notifyListeners();
        await changeBox(aa);
      } else {
        showToastView(S().save_shibai, context,'center');
        return;
      }
    });
  }

  getFaveUser(context) async {

    _favUserList.clear();
    setloading(true);
    var box = await Hive.openBox<UserModel>('user');
    for (var i = 0; i < box.length; i++) {
      if (box.getAt(i)!.fav == '1') {
        _favUserList.add(box.getAt(i));
      }
    }
    setloading(false);
  }

  setloading(t) {
    _loadding = t;
    notifyListeners();
  }

  findUser_name(context) async {
    _searchedList.clear();
    setloading(true);
    var _name = _contC.text.toUpperCase();


    if (_name == null || _name == '') {
      showToastView(S().pleaseInput, context,'center');
      return;
    }
    var box = await Hive.openBox<UserModel>('user');

    for (var i = 0; i < box.length; i++) {
      var _n = box.getAt(i)!.name.toString().toUpperCase();
      var _na = box.getAt(i)!.username.toUpperCase();

      if (_n.contains(_name) || _na.contains(_name)) {
        _searchedList.add(box.getAt(i));

      }
    }
    setloading(false);
    if ( _searchedList.length == 0) {
      showToastView(S().no_user_search, context,'center');
      return;
    }else{
      _shouFav =false;
    }

  }
}
