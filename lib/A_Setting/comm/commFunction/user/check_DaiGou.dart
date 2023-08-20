import 'dart:convert';


import 'package:dio/dio.dart';

import '../../../server.dart';

checkDaigou(_uid) async {
  Dio dio = Dio();
  var url = mainServer + "NewUser/getUid?uid=" + _uid;
  
  var cc = await dio.get(url);
  var dd = jsonDecode(cc.data);
  if (dd == '0' || dd == 0) {
    return '5';
  } else {
    var ff = dd[0]['daigou'].toString();
    return ff;
  }
}
