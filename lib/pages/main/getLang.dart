

import 'package:shared_preferences/shared_preferences.dart';
import '../../../A_Setting/cpinfo.dart';


getLang() async {
  var langSave = await SharedPreferences.getInstance();
  var _lang = langSave.getString('lang');

  if (_lang == null || _lang == '') {
    lang = 'zh';
  } else {
    lang = _lang;
  }
}
