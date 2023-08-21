
import 'package:chat_user/A_Setting/comm/commWidget/comeHome.dart';
import 'package:chat_user/A_Setting/comm/commWidget/loading.dart';
import 'package:chat_user/A_Setting/comm/commWidget/nullBodyView.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:chat_user/pages/chat/chatListview.dart';
import 'package:chat_user/pages/chat/provider/chatProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../A_Setting/comm/commStyle/style.dart';

class ChatMainPage extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    widthScreen = screenSize.width;

    return ChangeNotifierProvider(
      create: (_) => ChatProvider(),
      child: Builder(
        builder: (context) {
          ChatProvider   smp = Provider.of<ChatProvider>(context);
           return fanhuiView(smp,context,_bodyItem,S().chat,_ace(smp,context));
        },
      ),
    );
  }

    _ace(smp,context){
      return
          Container();
    }

  _bodyItem(smp, context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      smp.loadding == true
        ? loaddingView()
        :   Expanded(
            child: smp.data == null || smp.data.length == 0
                ? Container()
                : Container(child: _dataView(smp, context)))
      ],
    );
  }

  _dataView(smp, context) {

    return Column(
      children: [

        Expanded(child: chatListView(smp,context)),
        chat_inputView(smp,context),

      ],
    );
  }
}
