import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/color/colorModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shang/shangModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/size/sizeModel.dart';
import '../../../../../../A_Setting/server.dart';
import '../../../A_Setting/comm/commModel/model/shangCheng/shangInfo/shanginfoModel.dart';
Dio dio = Dio();

get_porductInfo() async {
  var url = mainServer + 'Piclog/get_pinfo';


  await dio.get(url).then((value) async {
    if (value.statusCode == 200) {
      var da = jsonDecode(value.data);

      if (da == 0 || da == '0') {
      } else {
        for (var a in da) {
          // color
          var _col = a['co'];
          var sz = a['sz'];

          await addtoColorList(_col);
          await addtoSizeList(sz);
        }
      }
    }
  });
}

addtoColorList(da) async {
  final box = await Hive.openBox<colorModel>('color');
  await box.clear();
  for (var a in da) {
    final box = await Hive.openBox<colorModel>('color');
    int id = 0;
    if (box.isNotEmpty) {
      var prevItem = box.length - 1;
      id = prevItem + 1;
    }

    await box.put(
        id.toString(),
        colorModel(
          lei: a['lei'],
          id: a['id'],
          color: a['color'],
          colorkr: a['krlei'] ?? '',
          cnlie: a['cnlei'],
          colorcn: a['colorcn'],
          krlei: a['krlei'],
        ));
  }
}

addtoSizeList(da) async {
  final box = await Hive.openBox<SizeModel>('size');
  await box.clear();

  for (var a in da) {
    final box = await Hive.openBox<SizeModel>('size');
    int id = 0;
    if (box.isNotEmpty) {
      var prevItem = box.length - 1;
      id = prevItem + 1;
    }

    await box.put(
        id.toString(),
        SizeModel(
          fenlei: a['fenlei'],
          id: a['id'],
          size: a['size'],
        ));
  }
}

// add shang info
get_shang_info() async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _maxSid = getuid.getString('maxSid');

  if (_maxSid == null || _maxSid == '') {
    _maxSid = '0';
  }

  var url = mainServer + 'Piclog/getShangInfo?maxid=' + _maxSid;

  await dio.get(url).then((value) async {
    var dd = jsonDecode(value.data);

    if (dd == '0' || dd == 0) {
    } else {
      final box = await Hive.openBox<ShangModel>('shang');
      await box.clear();
      await addShang(dd);
    }
  });
}

get_shang_info_haoshu() async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _maxid = getuid.getString('maxShangId');

  if (_maxid == null || _maxid == '') {
    _maxid = '0';
  }

  var url =
      mainServer + 'Piclog/getShangInfoShanghao?&maxid=' + _maxid;

  await dio.get(url).then((value) async {
    var dd = jsonDecode(value.data);

    if (dd == '0' || dd == 0) {
    } else {
      await add_shanghao(dd);
      await get_shang_info_haoshu();
    }
  });

}

checkShangHhao(a) async {
  var box = await Hive.openBox<ShangInfoModel>('shanghao');

  if ( box.length == 0) {
    await addShanghaoBox(a, '0', box);
  } else {
    var ff = await checkShanghaoChongfu(a, box);
    if (ff == true) {
      await addShanghaoBox(a, box.length.toString(), box);
    }
  }
}

checkShanghaoChongfu(a, box) async {
  for (var i = 0; i < box.length; i++) {
    if (a['id'] == box.getAt(i)!.id) {
      return false;
    }
  }

  return true;
}

addShanghaoBox(a, _id, box) async {
  ShangInfoModel _cc = ShangInfoModel(
    hao: a['hao'] == null || a['hao'] == '' ? '' : a['hao'],
    id: a['id'] == null || a['id'] == '' ? '' : a['id'],
    shangId: a['shangid'] == null || a['shangid'] == '' ? '' : a['shangid'],
    kaotalk: a['kaotalk'] == null || a['kaotalk'] == '' ? '' : a['kaotalk'],
    kaotalk_key: a['kaotalk_key'] == null || a['kaotalk_key'] == ''
        ? ''
        : a['kaotalk_key'],
    line: a['line'] == null || a['line'] == '' ? '' : a['line'],
    brand: a['brand'] == null || a['brand'] == '' ? '' : a['brand'],
    d: a['d'] == null || a['d'] == '' ? '' : a['d'],
    logo: a['logo'] == null || a['logo'] == '' ? '' : a['logo'],
  );
  int id = box.length+1;
  await box.put(id.toString(), _cc);
}

add_shanghao(dd) async {
  SharedPreferences getuid = await SharedPreferences.getInstance();

  for (var a in dd) {
    await getuid.setString('maxShangId', a['id']);
    await checkShangHhao(a);
  }
}

addShang(_schang) async {
  var id = 0;

  for (var a in _schang) {
    final box = await Hive.openBox<ShangModel>('shang');
    if (box.length == 0) {
      id = 0;
    } else {
      id = box.length+1;
    }

    ShangModel dd = ShangModel(
        id: a['id'] == null || a['id'] == '' ? '' : a['id'],
        shang: a['shang'] == null || a['shang'] == '' ? '' : a['shang'],
        lou: a['array'] == null || a['array'] == '' ? '' : a['array'],
        brand: a['brand'] == null || a['brand'] == '' ? '' : a['brand']);
    await box.put(id.toString(), dd);
  }
}
