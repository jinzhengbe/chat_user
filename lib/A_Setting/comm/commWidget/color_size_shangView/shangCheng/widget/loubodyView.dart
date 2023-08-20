import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/shangCheng/widget/lou_hao_itemView.dart';
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/model.dart';

bodyLou(smp, context) {
  return Container(
    // height: 500,
    child: Column(
      children: [
        Container(
          child: const Text(''),
        ),
        Expanded(
            child: louList.isEmpty
                ? Container(
                    child: InkWell(
                        onTap: () async {},
                        child: Chip(
                          label: Container(
                            alignment: Alignment.center,
                            child: Text('保存'),
                          ),
                        )))
                : Container(
                    // width: 500,
                    child: ListView.builder(
                        itemCount: louList.length,
                        itemBuilder: (context, i) {
                          var aa = louList[i];

                          return louHaoItemView_tanchuang(
                              aa, context, smp, 'lou');
                        }),
                  ))
      ],
    ),
  );
}
