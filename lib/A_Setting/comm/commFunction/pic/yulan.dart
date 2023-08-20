import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/A_Setting/comm/commWidget/nullBodyView.dart';
import 'package:photo_view/photo_view.dart';



class YulanPicLocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyItem(context));
  }

  _bodyItem(context) {
    return imageFile == null || imageFile == ''
        ? guanggaoView()
        : InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Center(child: yulan_Local(imageFile, context)),
    );
  }
}

yulan_Local(_imageFile, context) {
  return PhotoView(
    imageProvider: FileImage(_imageFile!),
    backgroundDecoration: BoxDecoration(
      color: Theme.of(context).canvasColor,
    ),
  );
}
