import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';

priceView(smp, context, title) {
  return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),

   padding: const  EdgeInsets.only(top: 10,bottom: 10),
   //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            padding: const  EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
          ),
          Expanded(
              child: Container(
            child: Text(
              price,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          )),
          Column(
            children: [
              showView(S().showAll_order, smp),
              showView(S().showOnley_order, smp),
            ],
          )
        ],
      ),

  );
}

showView(title, smp) {
  return InkWell(
      onTap: () {

        if (title == S().showAll_order) {
          smp.setShow_zid(true);
        } else {
          smp.setShow_zid(false);
        }
      },
      child: Card(
        color: smp.showAll == true && title == S().showAll_order
            ? Colors.orange
            : smp.showAll == false && title == S().showOnley_order
                ? Colors.orange
                : Colors.white,
        child: Container(
          width: 150,
          padding: const  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 13, color:smp.showAll == true && title == S().showAll_order
                ? Colors.white
                : smp.showAll == false && title == S().showOnley_order
                ? Colors.white
                : Colors.blue, fontWeight: FontWeight.w400),
          ),
        ),
      ));
}
