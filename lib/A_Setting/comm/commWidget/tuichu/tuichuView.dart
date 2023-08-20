import 'package:chat_user/A_Setting/comm/commFunction/go_page/go_login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_user/generated/l10n.dart';

tuichuView(smp, context) {
  return InkWell(
      onTap: () async {
        SharedPreferences getuid = await SharedPreferences.getInstance();
        await getuid.clear();
        await go_login(context);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Chip(
          backgroundColor: Colors.blue,
          label: Container(
            width: 100,
            child: Text(
              S().logOut,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ));
}

qingkong(smp, context) {
  return InkWell(
      onTap: () async {
        smp.qingkong(context);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Chip(
          backgroundColor: Colors.blue,
          label: Container(
            width: 100,
            child: Text(
              S().qingkongData,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ));
}
