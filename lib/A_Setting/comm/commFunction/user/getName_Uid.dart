import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:chat_user/A_Setting/server.dart';
import 'package:chat_user/generated/l10n.dart';

import '../toast.dart';

getName_Uid(_mark, _name, context) async {
  var url = mainServer + 'NewWuliu/get_name_uid?mark=' + _mark.toString();


  Dio dio = Dio();
  var _id = '';
  var ff = await dio.get(url);
  var dd = jsonDecode(ff.data);

  if (dd == 0 || dd == '0') {
    showToastView(S().save_shibai, context, 'center');
  } else {
    for (var a in dd) {
      _id = a['id'];

    }
  }
  return _id;
}


