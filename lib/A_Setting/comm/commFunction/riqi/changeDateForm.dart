
import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../server.dart';

changeDateForm(){
  return
  InkWell(
    onTap: () async {
      Dio dio = Dio();
      var url = mainServer + "NewCaigoudan/checkDateLeng";

      var ff = await dio.get(url);
      var dd = jsonDecode(ff.data);
      for (var a in dd) {
        var _dat = a['data'];
        if (_dat.length > 10) {

          var _dat = a['data'].toString().substring(0, 10);
          var uu = mainServer +
              "NewCaigoudan/changeDate?lid=" +
              a['lid'] +
              '&data=' +
              _dat;

          var gg = await dio.get(uu);
          var ff = jsonDecode(gg.data);
          if (ff == '1' || ff == 1) {

          } else {

          }
        }
      }
    },
    child: Text('eiit'),
  );
}