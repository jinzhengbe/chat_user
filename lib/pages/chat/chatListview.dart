

import 'package:chat_user/A_Setting/comm/commWidget/picView/picView.dart';
import 'package:flutter/material.dart';

chatListView(smp,context) {
   var _data = smp.messages;
  return _data == null || _data.length == 0
      ? Container()
      : ListView.builder(
            physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: _data.length,
          itemBuilder: (context, i) {
            var aa = _data[i];
            bool isMe = aa['isMe'];
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: _messView(aa,isMe,smp,context),
            );
          });
}
_messView(aa,isMe,smp,context){
  var _text = aa['text'];
  var _pic = aa['pic'];
  return
    Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        if (!isMe) CircleAvatar(
          backgroundImage: NetworkImage(aa['avatar']),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),

          decoration: BoxDecoration(
            color: isMe ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.black26)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(aa['time'], style: TextStyle(color: Colors.white, fontSize: 10.0)),
              SizedBox(height: 10.0,),
            _text ==null||_text==''?Container():  Text(aa['text'], style: TextStyle(color: Colors.white),textAlign: TextAlign.right,),
            _pic ==null||_pic==''?Container():  Container(
              height: 100.0,
              child: picView(_pic, context),
            ),
            ],
          ),
        ),
        if (isMe) CircleAvatar(
          backgroundImage: NetworkImage(aa['avatar']),
        ),
      ],
    );
}