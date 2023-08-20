
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../cpinfo.dart';
class ChangeLangProvider extends ChangeNotifier{

  ChangeLangProvider(context);

  toChangeLang(aa)async{

    SharedPreferences langSave = await SharedPreferences.getInstance();
    await langSave.setString('lang', aa['loacle']);
    await langSave.setString('langSvg', aa['svg']);
    svgpic =aa['svg'];

    for (var a in LangList) {
      if (aa['name'] == a['name']) {
        a['select'] = '1';
      } else {
        a['select'] = '';
      }
    }
    lang = aa['loacle'];
    notifyListeners();
  }

}