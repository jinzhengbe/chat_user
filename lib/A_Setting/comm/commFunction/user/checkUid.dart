import 'package:chat_user/A_Setting/comm/commFunction/go_page/go_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

checkUid(context) async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _uid = getuid.getString('zid');

  if (_uid == null || _uid == '') {
    await go_login(context);
    return 'false';
  } else {
    return _uid;
  }
}

checkQuanxian(context) async {
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _uid = getuid.getString('quanxian');

  switch (_uid.toString()) {
    case '':
      go_login(context);
      break;
    case 'null':
      go_login(context);
      break;
    case '经理':
      return true;
    case '老板':
      return true;
    default:
      return false;
  }
}


