import 'package:chat_user/A_Setting/cpinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

couryListView(smp, context) {
  return SizedBox(
    width: 300,
    child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: LangList.length,
        itemBuilder: (context, i) {
          var aa = LangList[i];

          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: _itemView(aa, smp, context));
        }),
  );
}

_itemView(aa, smp, context) {
  return InkWell(
    onTap: () async {
      smp.toChangeLang(aa);
    },
    child: Card(
        color: aa['select'] == '1' ? Colors.grey : Colors.white,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 20,
                  margin: const EdgeInsets.only(right: 20),
                  child: SvgPicture.asset(
                    aa['svg'],
                    height: 20,
                  )
                  ),
              Expanded(
                  child: Container(
                child: Text(aa['name']),
              ))
            ],
          ),
        )),
  );
}
