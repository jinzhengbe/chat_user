
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class YuLanPic extends StatelessWidget {
  final  String? acc;
  final String? photos;

  YuLanPic({key, this.acc, @required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MySecondScreen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GestureDetector(
            child: PhotoView(
              imageProvider:   NetworkImage(photos!),
              backgroundDecoration: const BoxDecoration(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}