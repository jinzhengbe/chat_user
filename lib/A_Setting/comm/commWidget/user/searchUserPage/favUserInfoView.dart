import 'dart:convert';

import 'package:flutter/material.dart';

favUserInfoView(smp, context) {
  return Container(
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            mainAxisExtent: 67,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10),
        itemCount: smp.favUserList.length,
        itemBuilder: (context, i) {
          var aa = smp.favUserList[i];
          return InkWell(
            onTap: (){
              var uid = aa.id;
              var _name = aa.name+"\n"+aa.username;
              var dd = jsonEncode({'uid':uid,'name':_name});
              Navigator.of(context).pop(dd);
              
            },
            child: favItemView(aa, smp, context),
          );
        }),
  );
}

favItemView(aa, smp, context) {
  return Card(
      child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 50, alignment: Alignment.center, child: Text(aa.id)),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(child: Text(aa.name)),
                  ),
                  Expanded(child: Container(child: Text(aa.username))),
                ],
              )),
              InkWell(
                onTap: (){
                  smp.setFave(aa,context);
                },
                child: Container(
                  width: 70,
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    aa.fav =='1'?Icons.favorite:Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )));
}
