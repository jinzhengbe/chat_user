import 'package:chat_user/A_Setting/comm/commModel/model/shangCheng/shang/shangModel.dart';
import 'package:hive/hive.dart';

import '../commModel/model/shangCheng/shangInfo/shanginfoModel.dart';

getShangid(_s) async {


  List sizeList = _s.split('-');
  var _kakaoId = '';
  var box_shang = await Hive.openBox<ShangModel>('shang');
  var _shangId = await _getSid(sizeList, box_shang);
  var box_hao = await Hive.openBox<ShangInfoModel>('shanghao');

  for (var i = 0; i < box_hao.length; i++) {
    if (_shangId == box_hao.getAt(i)!.shangId &&
        box_hao.getAt(i)!.hao == sizeList[2]) {
      _kakaoId = box_hao.getAt(i)!.kaotalk!;
    }
  }
  return _kakaoId;

}

_getSid(sizeList, box_shang) {
  var _shanId = '';
  for (var i = 0; i < box_shang.length; i++) {
    var _ss = box_shang.getAt(i)!.shang.toUpperCase();
    var _ll = box_shang.getAt(i)!.lou;
    if (sizeList[0].toString().toUpperCase() == _ss && sizeList[1] == _ll) {
      _shanId = box_shang.getAt(i)!.id;
      break;
    }
  }
  return _shanId;
}
