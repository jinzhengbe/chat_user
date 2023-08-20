import 'package:chat_user/A_Setting/comm/commWidget/picView/netPic/yulanView.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';


pivView(aa,context) {
  return InkWell(
    onTap: ()async{
      Dio dio = Dio();
      var dd = await dio.post(aa);

      if (dd.statusCode == 200) {
        Navigator.push(
            context,
            TiaoZhuan(YuLanPic(
              acc: '',
              photos: aa,
            )));
      }
    },
    child: Container(
      child: Image.network(aa,
        errorBuilder: (BuildContext context, Object exception,
            StackTrace? stackTrace) {
          return const Text('😢');
        },
      ),
    ),
  );
}
