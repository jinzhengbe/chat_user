import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shangInfo/shanginfoModel.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/colorPage/colorPageMain.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shang/shangModel.dart';

class ShangListProvider extends ChangeNotifier {
  bool _louShwo = true;

  bool get louShwo => _louShwo;

  final List _haoList = [];
  final List _haoListBak = [];

  List get haoList => _haoList;

  final TextEditingController _numC = TextEditingController();

  TextEditingController get numC => _numC;

  ShangListProvider(context) {
    getshanglist();
  }

  Set s = {};
  Set st = {};

  setLouShow(t) {
    _louShwo = t;
    notifyListeners();
  }

  searchHao(t) {
    _haoList.clear();
    for (var a in _haoListBak) {
      var _hao = a.hao;

      if (t.toString().contains(_hao)) {
        _haoList.add(a);
      }
    }
    notifyListeners();
  }

  relouad() {
    _haoList.clear();
    for (var a in _haoListBak) {
      _haoList.add(a);
    }
    notifyListeners();
  }

  setHao(t, context) {
    _numC.text = t;
    hao = t;
    notifyListeners();
    switch (shangType) {
      case '0':
        Navigator.push(context, TiaoZhuan( colorPage()));
        break;
      case '1':
        var dd = {'shang': shang, 'lou': lou, 'hao': hao};
        Navigator.of(context)
          ..pop()
          ..pop(dd);
        break;
    }
  }

  getshanglist() async {
    var box = await Hive.openBox<ShangModel>('shang');

    if (box.length == 0) {
    } else {
      shangList.clear();
      for (var i = 0; i < box.length; i++) {
        s.add(box.getAt(i)!.brand);
      }
      shangList = s.toList();
    }
    shangList.sort((item1, item2) => item1.compareTo(item2));
    notifyListeners();
  }

  setLoulist(aa) async {
    shang = aa;
    var box = await Hive.openBox<ShangModel>('shang');

    if (box.length == 0) {
    } else {
      louList.clear();
      for (var i = 0; i < box.length; i++) {
        var _brand = box.getAt(i)!.brand.toString();
        if (aa == _brand) {
          shang = box.getAt(i)!.shang.toString();
          louList.add(box.getAt(i));
        }
      }
    }
    louList.sort((item1, item2) => item1.lou.compareTo(item2.lou));
    notifyListeners();
  }

  addHao(aa, context) async {
    var _id = aa.id;
    lou = aa.lou;
    _louShwo = false;
    notifyListeners();
    var box = await Hive.openBox<ShangInfoModel>('shanghao');

    if (box.length == 0) {
    } else {
      _haoList.clear();
      _haoListBak.clear();
      for (var i = 0; i < box.length; i++) {
        var _shangid = box.getAt(i)!.shangId.toString();

        if (_id == _shangid) {
          _haoList.add(box.getAt(i));
          _haoListBak.add(box.getAt(i));
        }
      }
      notifyListeners();
    }
  }
}
