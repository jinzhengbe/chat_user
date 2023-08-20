
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

deleteOldLogs() async{
  var _path = await getLocalPath();
  SharedPreferences getuid = await SharedPreferences.getInstance();
  var _logsDirectory = getuid.getString('logsDirectory');
  if(_logsDirectory==null||_logsDirectory==''){
    return;
  }else{
    var dir = Directory(_logsDirectory);

    // 如果目录不存在，直接返回
    if (!dir.existsSync()) return;

    final now = DateTime.now();

    for (var file in dir.listSync()) {
      // 从文件名中获取日期信息或检查文件的创建日期
      DateTime fileDate = getFileDateFromName(file.path); // 你需要实现这个函数
      // 或使用： DateTime fileDate = file.statSync().changed;

      if (now.difference(fileDate).inDays > 5) {
        file.deleteSync();
      }
    }
  }

}
Future<String> getLocalPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}
DateTime getFileDateFromName(String filePath) {
  // 根据你的文件命名约定解析日期
  // 例如，如果文件名是 "YourAppName_YourUID_YourUName_2023-04-20.log"：
  String fileName = filePath.split('/').last;
  String datePart = fileName.split('_').last.split('.').first;
  return DateTime.parse(datePart);
}
