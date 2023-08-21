

import 'package:flutter/material.dart';

import '../commStyle/style.dart';

fanhuiView(smp,context,_bodyItem,_title,_ace){
  return
    WillPopScope(
        onWillPop: () async {
          // 不允许在 HomePage 中执行返回操作
          if (ModalRoute.of(context)?.isFirst ?? false) {
            return true;
          }
          Navigator.of(context).pop();
          return false;
        },
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragEnd: (details) {
            // 如果当前页面不是 HomePage 并且手势为从左向右滑动
            if (!(ModalRoute.of(context)?.isFirst ?? false) &&
                (details.primaryVelocity ?? 0) > 0) {
              Navigator.of(context).pop();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(_title),
              actions: [
                _ace,
              ],
            ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     smp.start();
            //   },
            //   child: Icon(Icons.refresh),
            //
            // ),
            body: widthScreen > 700
                ? _bodyItem(smp, context)
                : Container(
              // color:Color_prim(context),
              child: SafeArea(child: _bodyItem(smp, context)),
            ),
          ),
        ));
}

