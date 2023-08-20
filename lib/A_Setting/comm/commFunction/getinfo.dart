import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:chat_user/A_Setting/server.dart';

import '../../../pages/home/provider/getProductInfo.dart';
import '../../model.dart';

Future<void> getInfo() async {
  await get_porductInfo();
  await get_shang_info();
  await get_shang_info_haoshu();
}

Dio dio = Dio();

get_minDay() async {
  DateTime now = DateTime.now();
  DateTime day = now.add(Duration(hours: 6));
  DateTime minDay;

  if (day.weekday == DateTime.monday) {
    minDay = day.subtract(Duration(days: 3));
  } else {
    minDay = day.subtract(Duration(days: 1));
  }
  minDay = DateTime(minDay.year, minDay.month, minDay.day, 10);

  var _day = minDay.toString().substring(0, 10);
  await _setMinId( minDay, _day);

}

_setMinId( minDay, _day) async {
  String url = mainServer + 'NewCaigoudan/get_min_oid?min_day=$_day';

  var ff = await dio.get(url);
  var dd = jsonDecode(ff.data);

  if (dd == '0' || dd == 0) {
    await get_max_id(minDay);
  } else {
    await _getMin(dd,minDay);
  }
}
_getMin(dd,minDay)async{
  await dd.sort((item1, item2) =>
      item1['id'].toString().compareTo(item2['id'].toString()));
  for (var a in dd) {
    var _time = a['time'];

    if (_time == null || _time == '' || _time == '0') {
    } else {
      String formattedTime = _time.replaceFirst(' :', 'T');
      // 将 formattedTime 转换为 DateTime 对象
      DateTime timeObj = DateTime.parse(formattedTime);
      // 比较 _time 和 minDay
      await _set(minDay, timeObj, a);

    }
  }
}

_set(minDay, timeObj, a) {
  if (minDay.isAfter(timeObj)) {

  } else {
    minId = a['id'];

  }
}

get_max_id(minDay) async {
  // 获取 minDay 的日期部分
  var _day = minDay.toString().substring(0, 10);

  // 将 _day 转换为 DateTime 对象
  DateTime dayObj = DateTime.parse(_day);

  // 在 _day 的基础上减少一天

  DateTime previousDay = dayObj.subtract(Duration(days: 1));
  var _dayyy = previousDay.toString().substring(0, 10);

  var url = mainServer + 'NewCaigoudan/get_max_oid?min_day=' + _dayyy;

  var ff = await dio.get(url);
  var dd = jsonDecode(ff.data);

  if (dd == '0' || dd == 0) {
  } else {
    await dd.sort((item1, item2) =>
        item2['id'].toString().compareTo(item1['id'].toString())); // 从高到底
    minId = dd[0]['id'].toString();

  }
}
