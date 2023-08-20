
import 'package:chat_user/A_Setting/comm/commModel/model/zhiyuan/zhiyuanModel.dart';

getZhiyuanCC(a) {
  ZhiYuanModel _cc = ZhiYuanModel(id: a['id']==null||a['id']==''?'':a['id'],
      name: a['name']==null||a['name']==''?'':a['name'],
      phone: a['phone']==null||a['phone']==''?'':a['phone'],
      password: a['password']==null||a['password']==''?'':a['password'],
      quanxian: a['quanxian']==null||a['quanxian']==''?'':a['quanxian'],
      age: a['age']==null||a['age']==''?'':a['age'],
      job: a['job']==null||a['job']==''?'':a['job'],
      ok: a['ok']==null||a['ok']==''?'':a['ok'],
      time: a['time']==null||a['time']==''?'':a['time'],
      weixin: a['weixin']==null||a['weixin']==''?'':a['weixin'],
      xingbie: a['xingbie']==null||a['xingbie']==''?'':a['xingbie'],
      add: a['add']==null||a['add']==''?'':a['add'],
      show: a['show']==null||a['show']==''?'':a['show'],
      pic: a['pic']==null||a['pic']==''?'':a['pic'],);
  return _cc;
}