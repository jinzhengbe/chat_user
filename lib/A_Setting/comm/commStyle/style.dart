import 'package:flutter/material.dart';

double widthScreen = 0.0;
double MainmenuFontSize = 14;
Color mainColor = Colors.blue; //  Color.fromRGBO(25, 66, 103, 1);
Color mainBody = Colors.white; // Color.fromRGBO(45, 121, 188, 1);
Color titleBack = Colors.black12; //  Color.fromRGBO(235, 236, 240, 1);
Color mainMenuColor = Colors.blue; // Color.fromRGBO(38, 102, 158, 1);

// getCaigou
TextStyle textTitle =
    const TextStyle(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle textInfo = const TextStyle(
    // color: Colors.white,
    fontWeight: FontWeight.w500);

// getCaigou

getBd_bottom(co,w) {
  BoxDecoration _bd =
      BoxDecoration(border: Border(bottom: BorderSide(width: w, color: co)));
  return _bd;
}
getBd_left(co,w) {
  BoxDecoration _bd =
  BoxDecoration(border: Border(left: BorderSide(width: w, color: co)));
  return _bd;
}
getBd_right(co,w) {
  BoxDecoration _bd =
  BoxDecoration(border: Border(right: BorderSide(width: w, color: co)));
  return _bd;
}
getBd_all(co,w) {
  BoxDecoration _bd =
  BoxDecoration(border: Border.all(width: w,color: co));
  return _bd;
}
getBd_all_yaunjiao(co,w,o) {
  BoxDecoration _bd =
  BoxDecoration(border: Border.all(width: w,color: co),
      borderRadius: BorderRadius.all(Radius.circular(o))
  );
  return _bd;
}