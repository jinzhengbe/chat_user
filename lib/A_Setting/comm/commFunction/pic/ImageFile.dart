import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:chat_user/A_Setting/comm/commWidget/loading.dart';

ImageFile(_local, _netPic) {

  return _local == null
      ?   Container(child: ImageNet(_netPic))
      : Image.file(
          File(_local),
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Center(
              child:   ImageNet(_netPic),
            );
          },
        );
}

ImageNet(_netPic) {

  return  Image.network(
          _netPic,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Center(
              child: loaddingView(),
            );
          },
        );
}
