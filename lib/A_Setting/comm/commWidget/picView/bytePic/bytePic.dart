
import 'package:chat_user/A_Setting/comm/commFunction/pic/ImageFile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';
import '../netPic/yulanView.dart';

bytePicView(aa,pic,context) {

  return InkWell(
    onTap: ()async{
      Dio dio = Dio();
      var dd = await dio.post(pic);

      if (dd.statusCode == 200) {
        Navigator.push(
            context,
            TiaoZhuan(YuLanPic(
              acc: '',
              photos: pic,
            )));
      }
    },
    child: Container(
      child:
      ImageFile(aa,pic)

    ),
  );
}
