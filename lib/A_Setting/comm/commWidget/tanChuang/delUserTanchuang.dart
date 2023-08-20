import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/generated/l10n.dart';

delUserComp(context, smp, aa) {
  var dialog = CupertinoAlertDialog(
    content: Text(
      S().del_user_title,
      style: TextStyle(fontSize: 20),
    ),
    actions: <Widget>[
      CupertinoButton(
        child: Text(S().del_order_comp_cel),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoButton(
        child: Text(
          S().del_order_comp_ok,
          style: TextStyle(fontSize: 13, color: Colors.red),
        ),
        onPressed: () async {

          await Future.delayed(Duration(seconds: 0)).then((value){
            smp.delUser(aa, context);
            Navigator.pop(context);
          });

        },
      ),
    ],
  );

  showDialog(context: context, builder: (_) => dialog);
}
delOrderComp(title,context,smp,id){

  var dialog = CupertinoAlertDialog(
    content: Text(
      title,
      style: TextStyle(fontSize: 20),
    ),
    actions: <Widget>[
      CupertinoButton(
        child: Text(S().del_order_comp_cel),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoButton(
        child: Text(S().del_order_comp_ok),
        onPressed: () async {
          await smp.delO(id,context);
        },
      ),
    ],
  );

  showDialog(context: context, builder: (_) => dialog);
}