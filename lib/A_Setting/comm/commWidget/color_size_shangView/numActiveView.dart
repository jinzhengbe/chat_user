import 'package:flutter/material.dart';

numActionView(aa,bb, smp, context, s, title) {

  return InkWell(

    onTap: () {
      switch (title) {
        case '-':
          smp.jian(s, context,aa,bb);
          break;
        case '+':
          smp.jia(s, context,aa,bb);
          break;
      }
    },
    child: SizedBox(
      width: 50,
      child: Chip(
        backgroundColor: Colors.yellow,
          label: Text(
        title,
        style: const TextStyle(fontSize: 20),
      )),
    ),
  );
}

numInputView(aa,bb, smp, context, s) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.blue),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    ),
    padding: const  EdgeInsets.symmetric(vertical: 3),
    margin: const EdgeInsets.symmetric(vertical: 3),
    child: TextField(
      textAlign: TextAlign.center,
      onChanged: (t){
        smp.setInput(s,t,aa,bb);
      },
      controller: smp.numCont[s],
      decoration: const InputDecoration(
        hintText: '0',
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,

        isDense: true,
      ),
    ),
  );
}
