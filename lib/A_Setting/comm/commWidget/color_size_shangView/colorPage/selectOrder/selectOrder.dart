import 'package:flutter/material.dart';

import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';



selcetedOrderView(context, smp) {
  return order.isEmpty
      ? Container(
          child: Text(buhuoType=='1'?S().select_color:S().quhuo_beizhu),
        )
      : Container(
          child: ListView.builder(
              itemCount: order.length,
              itemBuilder: (context, i) {
                var aa = order[i];
                return Card(
                  child: Container(
                    padding: const  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 50,
                            child: Text(aa['color']),
                          ),
                          SizedBox(
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text(aa['size']), const Text(' *')],
                            ),
                          ),
                          SizedBox(
                              width: 50,
                              child: Text(
                                aa['num'].toString(),
                              )),
                          Expanded(
                            child: aa['beizhu'] == null
                                ? Container()
                                : Container(
                                    child: Text(aa['beizhu']),
                                  ),
                          ),
                          InkWell(
                            onTap: () async {
                              await order.removeAt(i);
                              await smp.shuaxin();
                            },
                            child: const SizedBox(
                              width: 30,
                              child: Icon(Icons.clear),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        );
}
