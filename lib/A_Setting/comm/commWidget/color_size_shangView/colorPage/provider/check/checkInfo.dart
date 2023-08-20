

import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';

import '../../../../../../../../generated/l10n.dart';

checkInfo(shang, lou, hao, num, color, size, price, context) {
  if (shang == null || shang == '') {
     showToastView(S().shang_null, context,'center');
    return;
  }
  if (lou == null || lou == '') {
    showToastView(S().lou_null, context,'center');
    return;
  }
  if (hao == null || hao == '') {
    showToastView(S().hao_null, context,'center');
    return;
  }
  if (color == null || color == '') {
    showToastView(S().color_null, context,'center');
    return;
  }

  if (size == null || size == '') {
    showToastView(S().size_null, context,'center');
    return;
  }
  if (num == null || num == '') {
    showToastView(S().num_null, context,'center');
    return;
  }
}
