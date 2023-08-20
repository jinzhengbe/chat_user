import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:isolate';
import 'package:chat_user/A_Setting/comm/commFunction/log/logSave/logSave.dart';
import 'package:chat_user/A_Setting/model.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'A_Setting/comm/commFunction/log/logSave/delLog.dart';
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
  uid = (getuid.getString('uid')==null?'':getuid.getString('uid'))!;
  var uName = getuid.getString(uid);

  String logFileName = "$cp\_$uid\_$uName.log";
  Logger logger = Logger(output: saveLogFile(logFileName));
  logger.d("This is a debug message");


  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e('Flutter Error: ${details.exception}', details.stack.toString());
  };

  Isolate.current.addErrorListener(RawReceivePort((List<dynamic> pair) {
    final List<dynamic> errorAndStacktrace = pair;
    logger.e('Isolate Error: ${errorAndStacktrace[0]}', errorAndStacktrace[1].toString());
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










