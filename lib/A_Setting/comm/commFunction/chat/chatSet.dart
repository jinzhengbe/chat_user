import 'dart:async';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatService {
  final io = IO.io('http://192.168.0.14:3000', <String, dynamic>{
    'transports': ['websocket'],
  });

  ChatService() {
    io.on('connect', (_) {
      print('connected to server');
    });

    io.on('chat response', (data) {
      if (data['success']) {
        print('Message saved successfully!');
      } else {
        print('Failed to save the message: ${data['message']}');
      }
    });
  }

  Future<bool> sendMessage(Map<String, dynamic> messageData) async {
    Completer<bool> completer = Completer();

    io.emit('chat message', messageData);

    // Listen for the response from the server
    io.on('chat response', (data) {
      if (data['success']) {
        completer.complete(true);
      } else {
        completer.complete(false);
      }
      // Optionally, remove the listener to avoid stacking listeners
      io.off('chat response');
    });

    return completer.future;
  }
}

