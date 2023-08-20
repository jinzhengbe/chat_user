import 'package:chat_user/A_Setting/comm/commStyle/style.dart';
import 'package:chat_user/A_Setting/comm/commWidget/changLang/changeLang.dart';
import 'package:chat_user/A_Setting/comm/commWidget/loading.dart';
import 'package:chat_user/pages/home/provider/langContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../A_Setting/cpinfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => changeLangProvider(context),
        child: Builder(builder: (context) {
          changeLangProvider smp = Provider.of<changeLangProvider>(context);
          return Scaffold(
              appBar: AppBar(
                leading: smp.loadding == true
                    ? Container()
                    : Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: selectLang(smp, context),
                      ),
                title: Text(cp),
              ),
              backgroundColor: mainBody,
              body: homeBodyView(smp, context));
        }));
  }

  homeBodyView(smp, context) {
    return widthScreen > 700
        ? _body(smp, context)
        : SafeArea(child: _body(smp, context));
  }

  _body(smp, context) {
    return smp.loadding == true
        ? loaddingView()
        : Column(
            children: [
              homeMenaView(smp, context),
            ],
          );
  }

  homeMenaView(smp, context) {
    return Container(child: Text('homeMenaView'));
  }
}

