import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'numWidget.dart';

colorSsizeV(aa, smp, context, y) {
  return InkWell(
      onTap: () {
      },
      child: Container(
        alignment: Alignment.center,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: smp.sizeList.length,
            itemBuilder: (context, i) {
              var bb = smp.sizeList[i];
              var _b = smp.sizeList.length;
              var z = (y*_b)+i;
              var innum = smp.numInputCon[z].text;
              var showBeizhu = false;

              if(innum==null||innum=='0'||innum==''){
                showBeizhu = false;
              }else{
                showBeizhu = true;
              }

              return Card(
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        alignment: Alignment.center,
                        child: Text(
                          bb['size'].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                      ),

                      // 数量
                      Expanded(child: buhuoNumView(aa,bb, context, smp, i, y)),
                      showBeizhu==true?bufhuoBeizhuView(aa,bb['size'],context, smp, z, i):Container(width: 50,)
                    ],
                  ),
                ),
              );
            }),
      ));
}

bufhuoBeizhuView(aa,_size,context, smp, z, i){
  return
    InkWell(
      onTap: () {
        showCupertinoDialog(aa,_size,context, smp, z, i);
      },
      child: Container(
        width: 50,
        alignment: Alignment.center,

        child: Text(
          smp.InputBeizhu[z].text == null ||
              smp.InputBeizhu[z].text == ''
              ? '备注'
              : smp.InputBeizhu[z].text,
          style:
          const TextStyle(overflow: TextOverflow.ellipsis,color: Colors.blue),
        ),
      ),
    );
}

showCupertinoDialog(aa,_size,context, smp, z, i) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('请输入备注信息\n如果没有，请点取消'),
          content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
                child: TextField(
                  controller: smp.InputBeizhu[z],
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          if(smp.InputBeizhu[z].text==null||smp.InputBeizhu[z].text==''){
                            showToastView(S().nothing, context,'center');
                            return;
                          }

                          var _colorId = aa['id'];
                          var t =smp.InputBeizhu[z].text;
                          smp.setBeizhu(_colorId,t,_size);

                          Navigator.pop(context);
                        },
                        child: const Text('确认'),
                      )),
                ],
              ),
            )
          ]),
        );
      });
}