import 'package:chat_user/A_Setting/comm/commWidget/user/searchUserPage/searchUserList.dart';
import 'package:flutter/material.dart';
import 'favUserInfoView.dart';

searchedView(smp, context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: smp.shouFav == true
        ? favUserView(smp, context)
        : searchUserList(smp, context)
  );
}

favUserView(smp, context) {
  return smp.favUserList == null || smp.favUserList.length == 0
      ? Container()
      : favUserInfoView(smp, context);
}

