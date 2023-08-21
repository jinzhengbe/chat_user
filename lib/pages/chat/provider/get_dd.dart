import 'package:chat_user/A_Setting/comm/commFunction/go_page/go_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

get_dd(_text, _pic, context) async {
  var _time = DateTime.now().toString().substring(0, 19);
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _uid = getuid.getString('uid');
  print('_uid = '+_uid.toString());
  if (_uid == null||_uid=='') {
    go_login(context);

  } else {
    var _dd = {
      'avatar': 'https://www.itying.com/images/flutter/1.png',
      'time': _time,
      'text': _text,
      'isMe': true,
      'pic': _pic,
      'uid': _uid
    };
    print (_dd);
    return _dd;
  }
}
