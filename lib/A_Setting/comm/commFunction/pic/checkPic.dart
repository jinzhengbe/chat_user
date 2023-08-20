//
// import 'dart:io';
//
// import 'package:chat_user/page/comm/commFunction/pic/downPic.dart';
//
// import 'package:chat_user/A_Setting/model.dart';
//
// checkPic(_pic,list,box,i)async{
//
//   var _local = await box.getAt(i)!.pic;
//
//   if (_local == null || _local == '') {
//     final name = box.getAt(i)!.pic.toString().split('/').last;
//     box.getAt(i)!.local = dir + '/' + name;
//     list.add(box.getAt(i));
//   }else{
//     list.add(box.getAt(i));
//   }
// }