
import 'package:flutter/material.dart';

chat_inputView(smp,context){
  return Row(
    children: [
      Expanded(
        child: TextField(
          controller: smp.inputC,

        ),
      ),
      IconButton(
        icon: Icon(Icons.send),
        onPressed: () {
          messages.add({'avatar': 'https://example.com/avatar.png', 'time': DateTime.now().toString(), 'text': inputText, 'isMe': true});
          inputText = '';
        },
      ),
    ],
  );
}