import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/shangCheng/widget/louListView.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/comm/commFunction/go_page/tiaoZhuan.dart';
import 'package:chat_user/A_Setting/model.dart';

shangLouListView(smp, context) {
  return Container(
      alignment: Alignment.center,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              mainAxisExtent: 50,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10),
          itemCount: shangList.length,
          itemBuilder: (context, i) {
            var aa = shangList[i];
            return InkWell(
              onTap: () async {
                await smp.setLoulist(aa);
                Navigator.push(context, TiaoZhuan(louShow()));
              },
              child: Card(
                  child: Container(
                padding: const  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  children: [
                   Expanded(child:  Container(
                     alignment: Alignment.center,
                     child: Text(
                       aa.toString(),
                       style: const TextStyle(
                           fontSize: 11, fontWeight: FontWeight.w400),
                     ),
                   ),)
                  ],
                ),
              )),
            );
          }));
}
