


import 'package:flutter/material.dart';

import 'package:chat_user/A_Setting/model.dart';

louHaoItemView_tanchuang(aa,context,smp,type){

  var _val ='';
  switch(type){
    case 'lou': _val = aa.lou;break;
    case 'hao': _val =aa.d+''+ aa.hao;break;
  }
  TextStyle _st = const TextStyle(
      fontSize: 12
  );

  return
    InkWell(
      onTap: (){
        switch(type){
          case 'lou': smp.addHao(aa,context);lou =_val;break;
          case 'hao': smp.setHao(_val,context);hao=_val;break;
        }

      },
      child: Card(
          child: Container(
            alignment: Alignment.center,
            padding:  EdgeInsets.symmetric(vertical: type =='lou'?10:0),
            child: type =='lou'?Text(_val):Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(aa.d,style: _st,),
              //  const SizedBox(height: 3,),
                Text(aa.hao,style: _st,)
              ],
            )
          )
      ),
    );
}