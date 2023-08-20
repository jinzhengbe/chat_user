import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/colorPage/sizeView/sizeSelect.dart';
import 'package:flutter/material.dart';

colorView(smp, context) {
  return Container(
      child: ListView.builder(
          itemCount: smp.colorList.length,
          itemBuilder: (context, i) {
            var aa = smp.colorList[i]; // 等同于 aa = list[i];

            return InkWell(
              onTap: () {
                var _cn = aa['cn'];
                var _kr = aa['kr'];

                smp.addSelect(_kr, _cn, context, aa);
              },
              child: _itemView(aa, context, smp, i),
            );
          }));
}

_itemView(aa, context, smp, i) {
  return Card(
      color: aa['select'] == true || aa['select'] == 'true'
          ? Colors.blue
          : Colors.white,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                _colorV(aa, context, smp),
                Expanded(
                    child: aa['select'] == true || aa['select'] == 'true'
                        ? colorSsizeV(aa, smp, context, i)
                        : Container()),
              ],
            ),
          ],
        ),
      ));
}


_colorV(aa, context, smp) {
  return Container(
      width: 100,

      padding: const  EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(

            child: Text(
              aa['cn'],
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color:  aa['select'] == true || aa['select'] == 'true'
              ? Colors.white
                : Colors.blue,),
            ),
          ),
        ],
      ));
}
