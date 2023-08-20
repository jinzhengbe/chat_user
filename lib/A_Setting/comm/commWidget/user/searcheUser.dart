import 'package:flutter/material.dart';

import 'package:chat_user/generated/l10n.dart';

searchUser() {
  return Container(

    decoration: BoxDecoration(
      border:const Border(bottom: BorderSide(width: 1))
    ),
    padding: const  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    child: Row(
      children: [
        Expanded(
            child: Container(
          child: TextField(
            enabled: false,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: S().search_user,
              contentPadding:  EdgeInsets.zero,
              isDense: true,
              border: InputBorder.none,
            ),
          ),
        )),
        Chip(
          label: Container(
            child: Icon(Icons.search),
          ),
        ),
      ],
    ),
  );
}
