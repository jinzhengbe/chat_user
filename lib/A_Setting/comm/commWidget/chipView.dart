
import 'package:flutter/material.dart';

chipView(title,co,st){
  return
    Chip(
      backgroundColor: co,
      label: Container(
        width: 100,
        child: Text(title,style: st,textAlign: TextAlign.center,),
      ),
    );
}