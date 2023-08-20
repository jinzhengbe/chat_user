
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> getLocalPath() async {

  if (Platform.isWindows) {
    return (await getTemporaryDirectory()).path;
  } else {
    final directory = await getApplicationDocumentsDirectory();
    final dirPath = '${directory.path}/access/';
    final accessDir = Directory(dirPath);
    if (!await accessDir.exists()) {
      await accessDir.create(recursive: true);
    }
    return dirPath;

  }
}

String getFilenameFromUrl(String url) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;
  return  segments.last;

}




