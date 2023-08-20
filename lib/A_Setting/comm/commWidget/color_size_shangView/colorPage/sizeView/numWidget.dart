import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/generated/l10n.dart';

buhuoNumView(aa,bb, context, smp, i, y) {
  var _b = smp.sizeList.length;

  var z = (y * _b) + i;

  return Card(
    child:  Column(
      children: [
        Row(
          children: [
            _mViwe(aa,bb, context, smp, '-', z, i),
            Expanded(
              child: _inpView(aa,bb, context, smp, z, i),
            ),
            _mViwe(aa,bb, context, smp, '+', z, i),
          ],
        ),
      ],
    ),
  );
}

mFun(z, i, smp, context, title,_size,aa) {
  var tt = smp.numInputCon[z].text;
  var a = 0;
  if (tt == null || tt == '') {
    a = 0;
  } else {
    a = int.parse(tt);
  }
  var _colorId =aa['id'];
  var _color = aa['cn'];
  var _colorKr = aa['kr'];
  if (title == '-') {
    var t = a - 1;
    if (t <= 0) {
      showToastView(S().buNengZaiShaoLe, context,'center');
      return;
    } else {
      smp.setNum(z, i, t,_colorId,_color,_colorKr,_size);
    }

  } else {
    var t = a + 1;
    smp.setNum(z, i, t,_colorId,_color,_colorKr,_size);
  }

}

_mViwe(aa,bb, context, smp, title, z, i) {
  return InkWell(
      onTap: () {

        var _size = bb['size'];
        mFun(z, i, smp, context, title,_size,aa);
      },
      child: Container(
        width: 50,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ));
}

_inpView(aa,bb, context, smp, z, i) {
  return MediaQuery.removePadding(
      removeTop: true,
      removeBottom: true,
      context: context,
      child: Container(
        height: 30,
        alignment: Alignment.center,
        child: TextField(
          controller: smp.numInputCon[z],
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(border: InputBorder.none, hintText: '0'),
        ),
      ));
}
