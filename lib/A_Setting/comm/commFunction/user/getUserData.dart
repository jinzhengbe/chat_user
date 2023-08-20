import 'package:shared_preferences/shared_preferences.dart';


import 'dart:convert';
import 'addDataToBox.dart';
import 'package:dio/dio.dart';
import '../zhiyuan/addZhiyuanBox.dart';
import '../../../../../A_Setting/server.dart';
Dio dio = Dio();

getmainServerData() async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _maxUid = getuid.getString('maxUid');
  if(_maxUid==null||_maxUid==''){
    _maxUid ='0';
  }

  var url = mainServer + "NewUser/get_user_end?max=0";

  await dio.get(url).then((value) async {
    var dd = jsonDecode(value.data);
    if (dd == 0 || dd == '0') {
    } else {
      await addDataToBox(dd);
    }
  });
}

Future<void> getZiyuanServerData() async {
  var url = mainServer + "NewUser/getZhiyuan";

  await dio.get(url).then((value) async {
    var dd = jsonDecode(value.data);

    if (dd == 0 || dd == '0') {
    } else {
      await dd.sort((a, b) => int.parse(a['id']).compareTo(int.parse(b['id'])));
      await addDataToBox_zhiyuan(dd);
    }
  });
}
