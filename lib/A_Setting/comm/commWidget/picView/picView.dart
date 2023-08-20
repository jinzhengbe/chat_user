import 'dart:io';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';
import 'package:chat_user/A_Setting/comm/commFunction/dio/dioLanJIeQi.dart';
import '../../commFunction/pic/yulan.dart';
import 'netPic/yulanView.dart';

picView(pic, context) {
  return InkWell(
    onTap: () async {
      var dd = await getDio(pic);

      if (dd == '404' || dd == '404') {
        Navigator.pop(context);
      } else {}
      Navigator.push(
          context,
          TiaoZhuan(YuLanPic(
            acc: '',
            photos: pic,
          )));
    },
    child: Container(
      color: Colors.pink[200],
      alignment: Alignment.topCenter,
      child: Image.network(
        pic,
        fit: BoxFit.cover,
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Text('no pic');
        },
      ),
    ),
  );
}

pic_localView(_local, context,_pic) {
  File file = File(_local);
  bool fileExists = file.existsSync();

  return fileExists == true
      ? InkWell(
          onTap: () {
            imageFile = File(_local);
            Navigator.push(context, TiaoZhuan(YulanPicLocalPage()));
          },
          onLongPress: () {
            Navigator.push(
                context,
                TiaoZhuan(YuLanPic(
                  acc: '',
                  photos: _pic,
                )));
          },
          child: Container(
            height: 150,
            width: 120,
            alignment: Alignment.centerLeft,
            color: Colors.grey[200],
            child: Image.file(File(_local)),
          ),
        )
      : picView(_pic, context);
}

// class YuLanPic extends StatelessWidget {
//   String? acc;
//   final String? photos;
//
//   YuLanPic({key, this.acc, @required this.photos}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MySecondScreen',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         body: GestureDetector(
//             child: PhotoView(
//               imageProvider: NetworkImage(photos!),
//               backgroundDecoration:  BoxDecoration(color: Colors.black),
//             ),
//             onTap: () {
//               Navigator.pop(context);
//             }),
//       ),
//     );
//   }
// }
