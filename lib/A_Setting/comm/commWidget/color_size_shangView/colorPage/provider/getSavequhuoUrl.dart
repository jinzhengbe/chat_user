
import 'package:chat_user/A_Setting/model.dart';

import '../../../../../../../A_Setting/server.dart';

getDaifuUrl(beizhu, _price, _num) {
  var url = mainServer +
      'NewOrder/Add_daifu?uid=' +
      uid +
      '&pic=' +
      pic +
      '&beizhu=' +
      beizhu +
      '&num=' +
      _num +
      '&shang=' +
      shang +
      '&lou=' +
      lou +
      '&hao=' +
      hao +
      '&pay=0' +
      '&price=' +
      _price;

  return url;
}

getQuhuoUrl(t, _num) async {
  var url = mainServer +
      "NewOrder/add_quhuo?uid=" +
      uid +
      '&beizhu=' +
      t +
      '&num=' +
      _num +
      '&shang=' +
      shang +
      '&lou=' +
      lou +
      '&hao=' +
      hao +
      '&tt=' +
      DateTime.now().toString().substring(0, 19) +
      '&pic=' +
      pic;

  return url;
}
