
import 'package:chat_user/A_Setting/comm/commModel/model/zhiyuan/zhiyuanModel.dart';
import 'package:hive/hive.dart';

getZhiyuanName(id)async{
  var box =await Hive.openBox<ZhiYuanModel>('zhiyuan');

  for(var i=0;i<box.length;i++){
    if(box.getAt(i)!.id==id){
      return box.getAt(i)!.name.toString();
    }

  }
  return 'new';
}