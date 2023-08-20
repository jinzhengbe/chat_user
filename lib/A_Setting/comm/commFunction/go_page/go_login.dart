
import 'package:chat_user/login/loginPage.dart';
import 'package:flutter/material.dart';

go_login(context)async{
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (_CustomRoute) => LoginPage()),
        (route) => false,
  );
}