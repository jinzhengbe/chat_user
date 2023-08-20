
import 'package:flutter/material.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/generated/l10n.dart';

inputPriceView(smp,context){
  return
      Container(
        height: 60,
        width: 300,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        decoration:buhuoType =='1'? BoxDecoration(
          border: Border.all(width: 1,color: Colors.blue),
          borderRadius: const BorderRadius.all(Radius.circular(20))
        ):const BoxDecoration(),

        padding: const  EdgeInsets.symmetric(horizontal: 10),
        child:  TextFormField(
          controller: smp.priceC,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: S().input_price_buhuo,
              hintStyle: const TextStyle(
                  color:Colors.grey
              )
          ),
        )
      );
}