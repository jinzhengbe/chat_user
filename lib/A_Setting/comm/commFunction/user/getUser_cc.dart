import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';

getUser_cc(a) {
  UserModel _cc = UserModel(
      name: a['name']==null||a['name']==''?"":a['name'],
      daifu:  a['daifu']==null||a['daifu']==''?"":a['daifu'],
      guojia:  a['guojia']==null||a['guojia']==''?"":a['guojia'],
      daigou:  a['daigou']==null||a['daigou']==''?"":a['daigou'],
      password:  a['password']==null||a['password']==''?"":a['password'],
      lev:  a['lev']==null||a['lev']==''?"":a['lev'],
      ustow:  a['ustow']==null||a['ustow']==''?"":a['ustow'],
      fav:  a['fav']==null||a['fav']==''?"":a['fav'],
      phone:  a['phone']==null||a['phone']==''?"":a['phone'],
      snsname:  a['snsname']==null||a['snsname']==''?"":a['snsname'],
      snsid:  a['snsid']==null||a['snsid']==''?"":a['snsid'],
      gongshang:  a['gongshang']==null||a['gongshang']==''?"":a['gongshang'],
      dd:  a['dd']==null||a['dd']==''?"":a['dd'],
      gonghao:  a['gonghao']==null||a['gonghao']==''?"":a['gonghao'],
      time:  a['time']==null||a['time']==''?"":a['time'],
      pic:  a['pic']==null||a['pic']==''?"":a['pic'],
      sns:  a['sns']==null||a['sns']==''?"":a['sns'],
      yunfei:  a['yunfei']==null||a['yunfei']==''?"":a['yunfei'],
      email:  a['email']==null||a['email']==''?"":a['email'],
      id:  a['id']==null||a['id']==''?"":a['id'],
      uuid:  a['uuid']==null||a['uuid']==''?"":a['uuid'],
      snstoken:  a['snstoken']==null||a['snstoken']==''?"":a['snstoken'],
      openid:  a['openid']==null||a['openid']==''?"":a['openid'],
      username:  a['username']==null||a['username']==''?"":a['username'],
      lang:  a['lang']==null||a['lang']==''?"":a['lang'],
      shen:  a['shen']==null||a['shen']==''?"":a['shen'],);

  return _cc;
}

getUser_cc_list(a) {
    UserModel _cc = UserModel(
        name: a.name==null|| a.name==''?"": a.name,
        daifu:   a.daifu==null|| a.daifu==''?"": a.daifu,
        guojia: a.guojia==null|| a.guojia==''?"": a.guojia,
        daigou:   a.daigou==null|| a.daigou==''?"": a.daigou,
        password:   a.password==null|| a.password==''?"": a.password,
        lev:   a.lev==null|| a.lev==''?"": a.lev,
        ustow:   a.ustow==null|| a.ustow==''?"": a.ustow,
        fav:   a.fav==null|| a.fav==''?"": a.fav,
        phone:   a.phone==null|| a.phone==''?"": a.phone,
        snsname:   a.snsname==null|| a.snsname==''?"": a.snsname,
        snsid:  a.snsid==null|| a.snsid==''?"": a.snsid,
        gongshang:  a.gongshang==null|| a.gongshang==''?"": a.gongshang,
        dd:   a.dd==null|| a.dd==''?"": a.dd,
        gonghao:   a.gonghao==null|| a.gonghao==''?"": a.gonghao,
        time:  a.time==null|| a.time==''?"": a.time,
        pic:   a.pic==null|| a.pic==''?"": a.pic,
        sns:  a.sns==null|| a.sns==''?"": a.sns,
        yunfei:   a.yunfei==null|| a.yunfei==''?"": a.yunfei,
        email:   a.email==null|| a.email==''?"": a.email,
        id:   a.id==null|| a.id==''?"": a.id,
        uuid:   a.uuid==null|| a.uuid==''?"": a.uuid,
        snstoken:  a.snstoken==null|| a.snstoken==''?"": a.snstoken,
        openid:   a.openid==null|| a.openid==''?"": a.openid,
        username:  a.username==null|| a.username==''?"": a.username,
        lang:   a.lang==null|| a.lang==''?"": a.lang,
        shen:   a.shen==null|| a.shen==''?"": a.shen,);

    return _cc;
}