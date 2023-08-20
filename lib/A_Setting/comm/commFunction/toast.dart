
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

showToastView(title,context,type){
  switch(type){
    case 'top':showToast(title, context: context,position: StyledToastPosition.top);break;
    case 'center':showToast(title, context: context,position: StyledToastPosition.center);break;
    case 'bottom':showToast(title, context: context,position: StyledToastPosition.bottom);break;
  }
}
