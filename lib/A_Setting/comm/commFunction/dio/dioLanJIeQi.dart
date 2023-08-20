import 'package:dio/dio.dart';

getDio(oo) async {

  if (oo == null || oo == '') {
    return '404';
  } else {
    try {
      var _da = await Dio().get(oo, options: Options(responseType: ResponseType.bytes));
      return _da.data;
    } on DioError catch (e) {
      return '404';

    }
  }
}
