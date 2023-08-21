

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
            return _messView(aa,isMe,smp,context);
          });
}
_messView(aa,isMe,smp,context){
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(aa['time'], style: TextStyle(color: Colors.white, fontSize: 10.0)),
              Text(aa['text'], style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        if (isMe) CircleAvatar(
          backgroundImage: NetworkImage(aa['avatar']),
        ),
      ],
    );
}