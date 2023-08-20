
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';

Future<Uint8List> fetchImageBytes(String url) async {
  final completer = Completer<Uint8List>();
  final client = HttpClient();
  final request = await client.getUrl(Uri.parse(url));
  final response = await request.close();
  final bytes = await consolidateHttpClientResponseBytes(response);
  completer.complete(bytes);
  return completer.future;
}