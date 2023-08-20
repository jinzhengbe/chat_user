
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../cpinfo.dart';
import 'changelange.dart';

selectLang(smp,context) {

  return Container(
    width: 50,
    padding: const  EdgeInsets.only(right: 20),

    child: InkWell(
      onTap: ()async {
        changeLangTanchuang(context);
      },
      child: SvgPicture.asset(
        svgpic,
        height: 30,
        width: 30,
      ),
    ),
  );
}