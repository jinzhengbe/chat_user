import 'dart:convert';

import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:dio/dio.dart';

Dio dio = Dio();

buhuoAddtoServer(url, context) async {
  Response ff = await dio.get(url);
  var dd = jsonDecode(ff.data);
  if (dd == 1 || dd == '1') {
    return true;
  } else {
    showToastView(S().save_shibai, context, 'center');
    return false;
  }
}
