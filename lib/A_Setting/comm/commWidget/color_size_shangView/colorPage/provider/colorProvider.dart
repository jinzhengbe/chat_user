import 'dart:convert';
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/color/colorModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/size/sizeModel.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'buhuoAddToServer.dart';
import 'check/checkInfo.dart';
import 'check/chekcBoxPic.dart';
import 'endBuhuo.dart';
import 'getSavequhuoUrl.dart';
import 'get_add_buhuo_url.dart';

class ColorsProvider extends ChangeNotifier {
   List _colorList = [];

  List get colorList => _colorList;

  final List _sizeList = [];

  List get sizeList => _sizeList;

  final TextEditingController _priceC = TextEditingController();

  TextEditingController get priceC => _priceC;

  final List<TextEditingController> _numCon = [];

  List<TextEditingController> get numCon => _numCon;

  final List<TextEditingController> _beizhu = [];

  List<TextEditingController> get beizhu => _beizhu;
  final List<TextEditingController> _numInputCon = [];

  List<TextEditingController> get numInputCon => _numInputCon;
  final List<TextEditingController> _inputBeizhu = [];

  List<TextEditingController> get InputBeizhu => _inputBeizhu;

  String _price = '';
  String _quhuobeizhu = '';

  String get quhuobeizhu => _quhuobeizhu;

  String get price => _price;

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
    _priceC.dispose();
    _numCon.clear();
    _beizhu.clear();
    _numInputCon.clear();
    _inputBeizhu.clear();
    _sisposed = true;
  }

  ColorsProvider(context) {
    addColor();
  }
   shuaxin(){
    notifyListeners();
   }

  saveAll(context, t) async {
    if (order.isEmpty) {
      showToastView(S().nothing, context, 'center');
      return;
    } else {
      for (var a in order) {
        var color = a['color'];
        await checkInfo(shang, lou, hao, num, color, size, price, context);
        var url = await getAddBuhuoUrl(a, t);
        await buhuoAddtoServer(url, context);
      }
      await checkBoxPic(pic);
      await endBuhuo(context);
      showToastView(S().save_ok, context, 'center');
      notifyListeners();
    }
  }

  saveQhuoBeizhu(t, context, _num) async{
    _quhuobeizhu = t;
    notifyListeners();
   if( buhuoType=='2'){
     await saveDaifu(context, t, _num);
   }else{
     await saveQuhuo(context, t, _num);
   }

  }
   saveQuhuo(context, t, _num)async{
    var url = await getQuhuoUrl(t,_num);
     var ff = await dio.get(url);
     var dd = jsonDecode(ff.data);
     if (dd == '1' || dd == 1) {
       Navigator.of(context)
         ..pop()
         ..pop()
         ..pop();
     } else {
       showToastView(S().save_shibai, context, 'center');
       return;
     }
   }


  saveDaifu(context, t, _num) async {
    if (_price == null || _price == '') {
      _price = '0';
    }
    var url = await getDaifuUrl(t, _price, _num);
    var ff = await dio.get(url);
    var dd = jsonDecode(ff.data);
    if (dd == '1' || dd == 1) {
      Navigator.of(context)
        ..pop()
        ..pop()
        ..pop();
    } else {
      showToastView(S().save_shibai, context, 'center');
      return;
    }
  }

  setBeizhu(_colorId, t, _size) {
    for (var a in order) {
      var _cid = a['colorId'];
      var _ss = a['size'];

      if (_cid == _colorId && _size == _ss) {
        a['beizhu'] = t;
        notifyListeners();
        return;
      }
    }
  }

  addColor() async {
    final box = await Hive.openBox<colorModel>('color');

    for (var a = 0; a < box.length; a++) {
      var _id = box.getAt(a)!.id;
      var _cn = box.getAt(a)!.cnlie;
      var _kr = box.getAt(a)!.krlei;

      if(_cn=='图片颜色'){}else{
        var _dd = {"id": _id, 'cn': _cn, 'kr': _kr, 'select': false};
        _colorList.add(_dd);
      }


    }
    await addSizeList();

    _colorList.add({"id": "", 'cn': '图片颜色', 'kr': '', 'select': false},);
    _colorList.sort((a,b)=>a['id'].compareTo(b['id']));
    notifyListeners();
  }

  addSizeList() async {
    final box = await Hive.openBox<SizeModel>('size');

    for (var a = 0; a < box.length; a++) {
      var _id = box.getAt(a)!.id;
      var _cn = box.getAt(a)!.size;
      var _dd = {"id": _id, 'size': _cn, 'select': false};

      _sizeList.add(_dd);
    }
    _sizeList.sort((item1, item2) => item2['size'].compareTo(item1['size']));

    var _cc = _colorList.length;
    var _ss = _sizeList.length;

    var nn = _cc * _ss;
    for (var a = 0; a <= nn; a++) {
      _numInputCon.add(TextEditingController());
      _inputBeizhu.add(TextEditingController());
    }
    notifyListeners();
  }

  addSelect(kr, t, context, aa) {
    var _select = aa['select'];

    if (_select == null || _select == '' || _select == false) {
      aa['select'] = true;
    } else {
      aa['select'] = false;
    }

    notifyListeners();
  }

  setNum(z, i, t, _colorId, _color, _colorKr, _size) {
    //   var z = (y * _b) +i
    _numInputCon[z].text = t.toString();
    var dd = {
      'colorId': _colorId,
      'color': _color,
      'colorKr': _colorKr,
      'size': _size,
      'num': t
    };
    if (order.isEmpty) {
      order.add(dd);
    } else {
      var ff = searchOrder(_colorId, t, _size);
      if (ff == true || ff == 'true') {
        order.add(dd);
        notifyListeners();
      }
    }

    _sizeList[i]['num'] = t;
    notifyListeners();
  }

  searchOrder(_colorId, t, _size) {
    for (var a in order) {
      var _cid = a['colorId'];
      var _ss = a['size'];
      if (_cid == _colorId && _size == _ss) {
        a['num'] = t;
        notifyListeners();
        return false;
      }
    }
    return true;
  }
}
