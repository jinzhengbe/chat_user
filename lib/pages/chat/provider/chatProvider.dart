import 'package:chat_user/A_Setting/comm/commFunction/chat/chatSet.dart';
import 'package:chat_user/A_Setting/comm/commFunction/pic/pazhao.dart';
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'get_dd.dart';

class ChatProvider extends ChangeNotifier {
  ChatProvider() {
    start();
  }

  bool _loadding = false;

  bool get loadding => _loadding;
  List _data = [];

  List get data => _data;

  List _messages = [];

  List get messages => _messages;
  bool _voice = false;

  bool get voice => _voice;

  bool _isCanceling = false;

  bool get isCanceling => _isCanceling;

  bool _isRecording = false;

  bool get isRecording => _isRecording;

  setLoading(t) {
    _loadding = t;
    notifyListeners();
  }

  bool _sisposed = false;

  @override
  notifyListeners() {
    if (!_sisposed) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _sisposed = true;
    _inputC.dispose();
  }

  TextEditingController _inputC = TextEditingController();

  TextEditingController get inputC => _inputC;

  start() async {
    await getMessages();
  }

  setCanceling(t) {
    _isCanceling = t;
    notifyListeners();
  }

  setRecording(t) {
    _isRecording = t;
    notifyListeners();
  }

  final chatService = ChatService();

  addMessage(context) async {
    if (_inputC.text.length > 0) {
      var _dd = await get_dd(_inputC.text, '', context);
      if(_dd == ''){
        return;
      }else{
        await sendServer(_dd, context);
      }

    } else {
      showToastView(S().inputBeizhu, context, 'center');
    }
  }

  sendPic(context) async {
    var _pic = await paizhao(context);
    print(_pic);
    if (_pic != null || _pic != '') {
      var _text = _inputC.text == '' ? '' : _inputC.text;
      var _dd = await get_dd(_text, '', context);
      if(_dd == ''||_dd == null){
        return;
      }else{
        await sendServer(_dd, context);
      }

    }
  }

  sendServer(_dd, context) async {
    var gg = await chatService.sendMessage(_dd);
    print(gg);
    if (gg == true) {
      _messages.add(_dd);
      _inputC.text = '';
      notifyListeners();
    } else {
      showToastView(S().save_shibai, context, 'center');
    }
  }

  sendVoice(context) async {
    print('sendVoice');
    _voice = !_voice;
    notifyListeners();
  }

  getMessages() async {
    var url = 'https://example.com/api/chat';
    print(url);
  }
}
