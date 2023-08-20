

import 'package:hive/hive.dart';

import '../../commModel/model/zhiyuan/zhiyuanModel.dart';
import 'getZhiyuan_cc.dart';


addDataToBox_zhiyuan(dd) async {
  var box = await Hive.openBox<ZhiYuanModel>('zhiyuan');
  await box.clear();
  for (var a in dd) {
    await _addBox(a);
  }

}

_addBox(a) async {
  var box = await Hive.openBox<ZhiYuanModel>('zhiyuan');
  var _cc = await getZhiyuanCC(a);
  if ( box.length == 0) {
    await box.put('0', _cc);
  } else {
    int id = box.length+1;
    await box.put(id.toString(), _cc);
  }
}


