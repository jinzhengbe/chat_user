import 'package:chat_user/A_Setting/comm/commModel/model/caiGouDan_temp/caigoudan_tempModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/menu/menuModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/picListModel/picListModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shangInfo/shanginfoModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/user/userModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/zhiyuan/zhiyuanModel.dart';
import 'package:hive/hive.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/buhuo/buhuoModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/color/colorModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shang/shangModel.dart';
import 'package:chat_user/A_Setting/comm/commModel/model/size/sizeModel.dart';

hiveBoxS() async {

  Hive.registerAdapter(menuModelAdapter());
  await Hive.openBox<menuModel>('menu');

  Hive.registerAdapter(PicListModelAdapter());
  await Hive.openBox<PicListModel>('piclist');

  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('user');

  Hive.registerAdapter(ZhiYuanModelAdapter());
  await Hive.openBox<ZhiYuanModel>('zhiyuan');

  Hive.registerAdapter(BuhuoModelAdapter());
  await Hive.openBox<BuhuoModel>('buhuo');


  Hive.registerAdapter(ShangModelAdapter());
  await Hive.openBox<ShangModel>('shang');

  Hive.registerAdapter(ShangInfoModelAdapter());
  await Hive.openBox<ShangInfoModel>('shanghao');

  Hive.registerAdapter(colorModelAdapter());
  await Hive.openBox<colorModel>('color');

  Hive.registerAdapter(SizeModelAdapter());
  await Hive.openBox<SizeModel>('size');

  Hive.registerAdapter(CaigoudanTempModelAdapter());
  await Hive.openBox<CaigoudanTempModel>('CaigoudanTemp');









}