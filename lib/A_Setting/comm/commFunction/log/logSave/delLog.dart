import 'dart:io';
import 'package:path_provider/path_provider.dart';

deleteOldLogs() async {
  var _path = await getLocalPath();

  var dir = Directory(_path);

  // 如果目录不存在，直接返回
  if (!dir.existsSync()) return;

  final now = DateTime.now();

  for (var file in dir.listSync()) {
    // 从文件名中获取日期信息或检查文件的创建日期
    DateTime? fileDate = getFileDateFromName(file.path); // 你需要实现这个函数
    // 或使用： DateTime fileDate = file.statSync().changed;
    if(fileDate == null) {
      continue;
    }else{
      if (now
          .difference(fileDate!)
          .inDays > 5) {
        file.deleteSync();
      }
    }

  }
}



Future<String> getLocalPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

DateTime? getFileDateFromName(String filePath) {
  String fileName = filePath.split('/').last;
  List<String> parts = fileName.split('_');

  if (parts.length < 4) return null; // Check if there are enough parts

  String datePart = parts[3].split('.').first;

  // Check if the extracted part matches a date format
  RegExp datePattern = RegExp(r"\d{4}-\d{2}-\d{2}");
  if (!datePattern.hasMatch(datePart)) return null;

  try {
    return DateTime.parse(datePart);
  } catch (e) {
    return null;
  }
}

