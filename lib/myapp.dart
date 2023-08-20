import 'dart:ui';
import 'package:chat_user/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'A_Setting/comm/commFunction/log/logSave/logSave.dart';
import 'A_Setting/cpinfo.dart';
import 'A_Setting/model.dart';
import 'login/loginPage.dart';
import 'package:logger/logger.dart';

late ValueChanged<Locale> localeChange;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    change_lang();

  }

  Locale _locale = Locale('zh', '');

  change_lang() async {
    var langSave = await SharedPreferences.getInstance();
    var _lang = langSave.getString('lang');

    if (_lang == null || _lang == '') {
      localeChange = (locale) {
        setState(() {
          _locale = locale;
        });
      };
    } else {
      var tt = Locale(_lang);
      localeChange = (locale) {
        setState(() {
          _locale = tt;
        });
      };
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate
      ],
      locale: Locale(lang),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
