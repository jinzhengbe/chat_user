import 'package:chat_user/A_Setting/comm/commStyle/style.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/shangCheng/provider/shangListPageProvider.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/shangCheng/shangLouListView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShangListPage extends StatelessWidget {
  const ShangListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_)=> ShangListProvider(context),
      child: Builder(
        builder: (context) {
          ShangListProvider smp = Provider.of<ShangListProvider>(context);
          return Scaffold(
            appBar: AppBar(title: Text('请选择商城'),),
            body: widthScreen > 700
                ? _body(smp, context)
                : SafeArea(child: _body(smp, context)),
          );
        },
      ),
    );
  }

  _body(smp, context) {
    return Container(
      alignment: Alignment.center,
      padding: const  EdgeInsets.only(top: 50),
      child: shangLouListView(smp, context));
  }
}
