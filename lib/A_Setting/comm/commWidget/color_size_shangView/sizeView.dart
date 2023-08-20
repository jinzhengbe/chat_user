import 'package:flutter/material.dart';

import 'package:chat_user/A_Setting/model.dart';
import 'numActiveView.dart';

sizeView(aa, smp, context, i) {
  List sizeList = size.split(',');
  return Container(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: sizeList.length,
          itemBuilder: (context, y) {
            var bb = sizeList[y];
            int s = (i * sizeList.length) + y;
            var _t = smp.numCont[s].text;
            int _n = 0;
            if (_t == null || _t == '') {
            } else {
              _n = int.parse(_t);
            }

            return smp.showAll == true
                ? _sizeItem(aa, smp, context, s, bb,_n)
                : _n > 0
                    ? _sizeItem(aa, smp, context, s, bb,_n)
                    : Container();
          }));
}

_sizeItem(aa, smp, context, s, bb,_n) {
  return Container(
    decoration: BoxDecoration(
        color: _n > 0 ? Colors.blue.shade100
            : Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: Colors.blue.shade100))),
    child: Row(
      children: [
        Container(
          width: 80,
          alignment: Alignment.center,
          child: Text(
            bb.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20),
          ),
        ),
        Expanded(child: inputNumView(aa, smp, context, s, bb))
      ],
    ),
  );
}

inputNumView(aa, smp, context, s, bb) {
  return Container(

    child: Row(
      children: [
        numActionView(aa, bb, smp, context, s, '-'),
        Expanded(
            child: numInputView(
          aa,
          bb,
          smp,
          context,
          s,
        )),
        numActionView(aa, bb, smp, context, s, '+'),
      ],
    ),
  );
}
