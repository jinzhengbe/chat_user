import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:isolate';
import 'package:chat_user/A_Setting/comm/commFunction/log/logSave/logSave.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'A_Setting/comm/commFunction/log/logSave/delLog.dart';
import 'A_Setting/comm/commFunction/user/getUnameOnly.dart';
import 'A_Setting/cpinfo.dart';
import 'myapp.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:chat_user/pages/main/MyHttpOverrides.dart';
import 'package:chat_user/pages/main/getBoxs.dart';


void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  // 一下是 log 的初始化
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _uid = getuid.getString('uid');
  String logFileName = '';
  var riqi = DateTime.now().toString().substring(0, 10);

  if (_uid == null) {
    logFileName = "$cp\_$riqi.log";
  } else {
    var uName = await getUnameOnly(_uid);
    logFileName = "$cp\_$_uid\_$uName\_$riqi.log";
  }


  Logger logger = Logger(output: saveLogFile(logFileName));

  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e('Flutter Error: ${details.exception}', details.stack.toString());
  };

  Isolate.current.addErrorListener(RawReceivePort((List<dynamic> pair) {
    final List<dynamic> errorAndStacktrace = pair;
    logger.e('Isolate Error: ${errorAndStacktrace[0]}',
        errorAndStacktrace[1].toString());
  }).sendPort);

  await Hive.initFlutter();
  await hiveBoxS();
  await deleteOldLogs();
  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stackTrace) {
    logger.e('RunZoned Error: $error', stackTrace);
  });
}










