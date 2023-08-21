import 'package:flutter/material.dart';
class ChatProvider extends ChangeNotifier{

  ChatProvider(){
     start();
  }
  bool _loadding = false;
  bool get loadding =>_loadding;
  List _data=[];
  List get data=>_data;

  List<String>  _messages = [];
  List<String> get messages => _messages;
  setLoading(t){
    _loadding =t;
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
  void dispose(){
    super.dispose();
    _sisposed = true;
    _inputC.dispose();
  }
  TextEditingController _inputC = TextEditingController();
  TextEditingController get inputC => _inputC;

  start()async{
   await getMessages();
  }
  getMessages()async{
     var url = 'https://example.com/api/chat';
     print(url);
  }
}