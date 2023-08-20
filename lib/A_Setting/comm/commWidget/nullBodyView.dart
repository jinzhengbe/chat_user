
import 'package:flutter/material.dart';

import 'package:chat_user/generated/l10n.dart';

nullBodyView(){
  return
    Center(
        child:Column(
          children: [
           Card(
             child:  Container(
               alignment: Alignment.center,
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
               child: Text(S().sel_hao,style: TextStyle(
                 fontSize: 20,fontWeight: FontWeight.w500
               ),),
             ),
           ),
            Expanded(child:  Container(),)
          ],
        )
    );
}
guanggaoView(){
  return
      Container(
        alignment: Alignment.center,
        child: Text('guangao'),
      );
}