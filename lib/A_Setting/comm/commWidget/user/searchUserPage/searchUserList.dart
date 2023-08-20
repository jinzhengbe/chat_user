import 'dart:convert';
import 'favUserInfoView.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/comm/commWidget/nullBodyView.dart';

searchUserList(smp, context) {
  return smp.searchedList == null || smp.searchedList.length == 0
      ? nullBodyView()
      : searchUserView(smp, context);
}

searchUserView(smp, context) {
  return Container(
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            mainAxisExtent: 67,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10),
        itemCount: smp.searchedList.length,
        itemBuilder: (context, i) {
          var aa = smp.searchedList[i];
          return InkWell(
              onTap: () {
                var uid = aa.id;
                var _name = aa.name + "(" + aa.username + ")";
                var dd = jsonEncode({'uid': uid, 'name': _name,'yunfei':aa.yunfei,'daigou':aa.daigou,'diqu':aa.guojia});

                Navigator.of(context).pop(dd);
              },
              child: favItemView(aa, smp, context));
        }),
  );
}
