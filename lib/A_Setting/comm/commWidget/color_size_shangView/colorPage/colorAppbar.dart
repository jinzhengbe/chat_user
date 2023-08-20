import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:flutter/material.dart';
coolorAppbar(context, smp) {
  var _t = '';
  switch (buhuoType) {
    case '1':
      _t = S().select_color;
      break;
    case '2':
      _t = S().order_daifu;
      break;
    case '3':
      _t = S().quhuo;
      break;
  }

  return AppBar(
    title: Text(
      _t,
    ),
    actions: [
      buhuoType == '1'
          ? InkWell(
              onTap: () async {
                var t = smp.priceC.text;

                if (t == null || t == '') {
                  showToastView(S().input_price_buhuo, context, 'center');
                  return;
                }
                await smp.saveAll(context, t);
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: const  EdgeInsets.only(right: 10),
                  child: Chip(
                    backgroundColor: Colors.yellow,
                    label: Text(
                      S().save,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            )
          : Container()
    ],
  );
}
