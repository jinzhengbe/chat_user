

import 'package:chat_user/A_Setting/model.dart';
import 'package:chat_user/A_Setting/server.dart';

getAddBuhuoUrl(a,_price){

  var color = a['color'];
  var kr = a['colorKr'];
  var size = a['size'];
  var num = a['num'].toString();
  var beizhu = a['beizhu'] ?? '';
  var _gg = 'color:' + color + '(' + kr + ') ' + '; size:' + size;

  var url = mainServer +
      'NewOrder/user_buhuo?uid=' +
      uid +
      '&pic=' +
      pic +
      '&gui=' +
      _gg +
      '&beizhu=' +
      beizhu +
      '&num=' +
      num +
      '&shang=' +
      shang +
      '&lou=' +
      lou +
      '&hao=' +
      hao +
      '&pay=0'+'&price='+_price;


  return url;

}

