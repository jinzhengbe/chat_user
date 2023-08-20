
import 'package:chat_user/pages/home/homePage.dart';
import 'package:flutter/material.dart';

goHome_close_all(context) async {
  Future.delayed(Duration(seconds: 1), () {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_customRoute) => HomePage()),
          (route) => false,
    );
  });
}