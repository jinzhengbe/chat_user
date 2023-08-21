import 'package:flutter/material.dart';

chat_inputView(smp, context) {
  return Container(
      color: Colors.black12,
      padding: EdgeInsets.only(left: 10.0, right: 0.0),
      child: Row(
        children: [
         // _iconView(smp,context,Icons.settings_voice_rounded,'voice'),
          _inputview(smp,context),
          _iconView(smp,context,Icons.send,'send'),
          _iconView(smp,context,Icons.add_circle_outline_outlined,'add'),

        ],
      ));
}
_inputview(smp,context){
  return
    Expanded(
        child: Container(
          margin: EdgeInsets.only(
           top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.black26)],
          ),
          child: TextField(
              controller: smp.inputC,
              onEditingComplete: () {
                smp.addMessage(context);
              },
              decoration: InputDecoration(
                hintText: '',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10.0),
              )),
        ));
}
_iconView(smp,context,icon,ty){
  return IconButton(
    icon: Icon(icon),
    onPressed: () {
      switch(ty){
        case 'add':
          smp.sendPic(context);
          break;
        case 'send':
          smp.addMessage(context);
          break;
        // case 'voice':
        //   smp.sendVoice(context);
        //   break;
      }

    },
  );
}