import 'package:flutter/material.dart';

louHaoTitleView(smp, context) {
  return Container(
    decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
    padding: const  EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title('楼层', smp, context,
            smp.louShwo == true ? Colors.blue : Colors.grey),
        title('号数', smp, context,
            smp.louShwo == false ? Colors.blue : Colors.grey),
      ],
    ),
  );
}

title(title, smp, context, co) {
  return InkWell(
      onTap: () {
        switch (smp.louShwo) {
          case true:
            smp.setLouShow(false);
            break;
          case false:
            smp.setLouShow(true);
            break;
        }
      },
      child: Container(
        child: Text(
          title,
          style: TextStyle(color: co),
        ),
      ));
}

LouhaoInputView(hint, conter, smp, context) {
  return Container(
    alignment: Alignment.center,

    decoration: const BoxDecoration(
        borderRadius:  BorderRadius.all(
          Radius.circular(5),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: TextFormField(
              controller: conter,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (t) {
                smp.searchHao(t);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'bu neng wei kong ';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.red),
                // isCollapsed: true,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          margin: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              conter.text = '';
              smp.relouad();
            },
            icon: const Icon(Icons.cancel_rounded),
          ),
        )
      ],
    ),
  );
}
