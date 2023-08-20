

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_user/generated/l10n.dart';

jieSuanDelOrder(smp, context, aa) {
  showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(S().tishi),),
          content: Text(
            S().del_order_comp_title,
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          actions: [
            CupertinoDialogAction(
                isDefaultAction: true,
                child: Text(S().quxiao),
                onPressed: () {
                  Navigator.pop(context);
                }),
            CupertinoDialogAction(
                isDefaultAction: true,
                child: Text(S().del),
                onPressed: () async {
                  await smp.delCaigouList(aa,context);
                  await smp.getUserDaiJieData(context);
                  Navigator.pop(context);
                })
          ],
        );
      });
}