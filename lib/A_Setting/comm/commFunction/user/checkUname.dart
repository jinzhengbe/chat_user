

import 'package:chat_user/A_Setting/comm/commModel/model/zhiyuan/zhiyuanModel.dart';
import 'package:hive/hive.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';
checkUname(id)async{

  var box =await Hive.openBox<UserModel>('user');

  for(var i=0;i<box.length;i++){
    if(box.getAt(i)!.id==id){
      return box.getAt(i)!.name+" | "+box.getAt(i)!.username;
    }
  }
  return 'new';
}
check_yunfei(id)async{

  var box =await Hive.openBox<UserModel>('user');

  for(var i=0;i<box.length;i++){

    if(box.getAt(i)!.id==id){
      return box.getAt(i)!.yunfei;
    }
  }
  return '0';
}



checkUname_zhiyuan(id)async{

  var box =await Hive.openBox<ZhiYuanModel>('zhiyuan');

  for(var i=0;i<box.length;i++){

    if(box.getAt(i)!.id==id){
      return box.getAt(i)!.name;
    }
  }
  return 'new';
}