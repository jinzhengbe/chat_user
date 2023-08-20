import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_user/generated/l10n.dart';

loaddingView() {
  return Container(
    alignment: Alignment.center,
    child: const CupertinoActivityIndicator(
      // 设置半径
      radius: 20,
      color: Colors.blue,
    ),
  );
}

loaddingView_jiazai() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 20),
          child: const CupertinoActivityIndicator(
            // 设置半径
            radius: 20,
          ),
        ),
        Container(
          child: const Text(
            '请稍后，数据正在加载中...\n请稍等 大约 1-3分钟',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

haveNothingView() {
  return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            child: Text(S().nothing),
          )
        ],
      ));
}

jinduTiao(_count, totle) {
  return Container(
      alignment: Alignment.center,
      padding: const  EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              S().updateInfo,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const  EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 50,
                    child: Text(
                      _count.toString(),
                    )),
                Container(
                  width: 100,
                  child: Text(' /  ' + totle),
                )
              ],
            ),
          ),
          LinearProgressIndicator(
            value: _count / 100,
            // 当前进度
            backgroundColor: Colors.blue,
            // 进度条背景色
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.yellow),
            // 进度条当前进度颜色
            minHeight: 10, // 最小宽度
          )
        ],
      ));
}
