import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:chat_user/A_Setting/server.dart';
import '../../../../generated/l10n.dart';
import '../toast.dart';


uploadImage(u, context) async {
  var tt2 = DateTime.now()
      .toString()
      .replaceAll(':', '_')
      .substring(0, 23)
      .replaceAll(' ', '')
      .replaceAll('-', '')
      .replaceAll('.', '_');

  File file = File(u.path);
  var byte = file.readAsBytesSync();
  String name = u.path.toString().split('/').last;
  String type = name.split('.').last;
  var picName = tt2 + '.' + type;
  final _ap = FileApi();
  var dd = await _ap.uploadImageByte(byte, picName.replaceAll(' ', ''));

  if (dd.toString() == '') {

    showToastView(S().save_shibai, context, type);
    return '';
  } else {

    showToastView(S().save_ok, context, type);
    return upPicView + dd.toString();
  }
}

class FileApi {
  final _dio = Dio();

  Future<Response> uploadImageByte(Uint8List image, name) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(
        image,
        filename: name,
      )
    });

    final response =
        await _dio.post('http://ksoft.link:8080/upload', data: formData);
    return response;
  }
}
