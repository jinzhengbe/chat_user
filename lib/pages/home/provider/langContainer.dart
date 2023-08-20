import 'dart:convert';
import 'package:chat_user/A_Setting/comm/commFunction/checkPermiss/getLocalPath.dart';
import 'package:chat_user/A_Setting/comm/commFunction/user/checkUid.dart';
import 'package:dio/dio.dart';
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import '../../../../A_Setting/cpinfo.dart';
import '../../../../A_Setting/server.dart';
import '../../../../A_Setting/zhangdan.dart';
import '../../../../A_Setting/comm/commFunction/checkPermiss/check_permission.dart';
import '../../../A_Setting/comm/commFunction/getinfo.dart';
import '../../../../A_Setting/comm/commFunction/user/getUserData.dart';

import '../../main/getLang.dart';
import '../../main/gewidth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';
import 'getpage.dart';

class changeLangProvider extends ChangeNotifier {
  bool _leftInfoShow = false;

  bool get leftInfoShow => _leftInfoShow;

  bool _langShow = false;

  bool get langShow => _langShow;

  final Color _selectedColor = Colors.black;

  Color get selectedColor => _selectedColor;

  final Color _defColor = Colors.grey;

  Color get defColor => _defColor;

  bool _loadding = true;

  bool get loadding => _loadding;

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
    _sisposed = true;
  }

  List _menuData = [];

  List get menuData => _menuData;

  changeLangProvider(context) {
    start(context);
  }

  start(context) async {
    shangList.clear();
    shangLouHaoList.clear();
    await getMenuData();
    await checkPermissions(context);
    await getData();
    await getDaoQi_num(context);
    await getwidth(context);
    await get_langSvg(context);
    await getLocalPath();
  }

  getMenuData() async {
    var url = mainServer + 'NewOrder/getmenu';

    Dio dio = Dio();

    try {
      var ff = await dio.get(url);
      var dd = jsonDecode(ff.data);
      if (dd == 0 || dd == '0') {
      } else {
        _menuData.clear();
        Set _title = Set();
        for (var a in dd) {
          _title.add(a['title']);
        }
        if (_title.length > 0) {
          for (var t in _title) {
            var _item = [];
            for (var a in dd) {
              if (a['title'] == t) {
                _item.add(a);
              }
            }
            _menuData.add({'title': t, 'item': _item});
          }
        }

        notifyListeners();
      }
    } catch (e) {}
  }

  getData() async {
    _loadding = false;
    notifyListeners();
    await getLang();
    await getmainServerData();
    await getZiyuanServerData();
    await getInfo();
    notifyListeners();
  }

  getDaoQi_num(context) async {
    SharedPreferences getuid = await SharedPreferences.getInstance();
    var _zname = getuid.getString('zname');
    if (_zname == null || _zname == '') {
    } else {
      zname = _zname;
    }

    notifyListeners();

  }

  getNewNum(context) async {
    Dio dio = Dio();
    var url = mainServer + "NewOrder/get_newNum";

    var ff = await dio.get(url);
    var dd = jsonDecode(ff.data);

    if (dd == 0 || dd == '0') {
    } else {
      _menuData[0]['item'][0]['num'] =
          dd['order'] == null || dd['order'] == '' ? '0' : dd['order'];
      _menuData[0]['item'][1]['num'] = dd['user'];
    }

    notifyListeners();
  }

  shuaxin() {
    notifyListeners();
  }

  get_langSvg(context) async {
    SharedPreferences langSave = await SharedPreferences.getInstance();
    var _svg = langSave.getString('langSvg');
    if (_svg == null || _svg == '') {
      svgpic = 'assets/images/cn.svg';
    } else {
      svgpic = _svg;
    }
    notifyListeners();
  }

  setSelect(t) {
    notifyListeners();
  }

  setShowLeft(t) {
    _leftInfoShow = t;
    notifyListeners();
  }

  setLangShow(t) {
    _langShow = t;
    notifyListeners();
  }

  goToPage(aa, context) async {
    var gg = await checkUid(context);
    if (gg == 'false') {
      showToastView(S().noquanxian, context, 'top');
      return;
    } else {
      _goPage(aa, context);
    }
  }

  _goPage(aa, context) async {
    if (aa['page'] == null || aa['page'] == '') {
      return;
    }

    Widget pageWidget = await getPage(aa['page']);

    switch (aa['quanxian']) {
      case '1':
        var _dd = await checkQuanxian(context);
        if (_dd == true) {
          Navigator.push(context, TiaoZhuan(pageWidget));
        }
        break;
      default:
        await check(aa['type']);
        Navigator.push(context, TiaoZhuan(pageWidget));
        break;
    }
  }

  check(na) async {
    switch (na) {
      case 'caigou':
        caigouType = '1';
        notifyListeners();
        break;
      case 'NewCaigou':
        caigouType = '2';
        notifyListeners();
        break;
      case 'dayCaigou':
        caigouType = '3';
        notifyListeners();
        break;
      case 'dianhuo':
        dianhuoType = '1';
        notifyListeners();
        break;
      case 'NewDianhuo':
        dianhuoType = '2';
        notifyListeners();
        break;
      case 'buhuo':
        buhuoType = '1';
        notifyListeners();
        break;
      case 'daifu':
        buhuoType = '2';
        notifyListeners();
        break;
      case 'quhuo':
        buhuoType = '3';
        notifyListeners();
        break;
      case 'z0':
        zangType = '0';
        notifyListeners();
        break;
      case 'z1':
        zangType = '1';
        notifyListeners();
        break;
      case 'z2':
        zangType = '2';
        notifyListeners();
        break;
      case 'z3':
        zangType = '3';
        addtype = 'ru';
        notifyListeners();
        break;
      case 'z4':
        zangType = '4';
        addtype = 'chu';
        notifyListeners();
        break;
      case 'z5':
        notifyListeners();
        break;
      case 'daifa':
        fatype = 'daifa';
        notifyListeners();
        break;
      case 'yifa':
        fatype = 'yifa';
        notifyListeners();
        break;
    }
  }
}
