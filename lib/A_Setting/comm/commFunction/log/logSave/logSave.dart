import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class saveLogFile extends LogOutput {
  final String fileName;

  saveLogFile(this.fileName);

  @override
  void output(OutputEvent event) async {

    final message = event.lines.join('\n');
    await _writeToFile(message);
  }

  Future<void> _writeToFile(String message) async {
    print('start save log');
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName';
    final logFile = File(filePath);
    final timeString = DateTime.now().toIso8601String();
    final formattedMessage = '$timeString: $message\n';

    if (!await logFile.exists()) {
      await logFile.create();
    }
    await logFile.writeAsString(formattedMessage, mode: FileMode.append);
  }
}
