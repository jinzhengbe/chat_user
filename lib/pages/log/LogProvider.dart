import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class LogProvider with ChangeNotifier {
  late List<File> logFiles = [];

  Future<void> fetchLogFiles() async {
    final directory = await getApplicationDocumentsDirectory();
    logFiles = directory
        .listSync()
        .where((item) => item is File && item.path.endsWith('.log'))
        .cast<File>()
        .toList();
    notifyListeners();
  }
}
