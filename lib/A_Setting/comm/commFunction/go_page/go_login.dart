
import 'package:chat_user/login/loginPage.dart';
import 'package:flutter/material.dart';

go_login(context)async{
  print('go_login');
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (_CustomRoute) => LoginPage()),
        (route) => false,
  );
}