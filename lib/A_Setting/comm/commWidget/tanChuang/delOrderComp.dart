
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/generated/l10n.dart';

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