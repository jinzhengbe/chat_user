
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/generated/l10n.dart';
import 'package:chat_user/login/loginInput.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:chat_user/A_Setting/comm/commWidget/loading.dart';
import 'loginProvider.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _userC = TextEditingController();
  TextEditingController _passC = TextEditingController();

  FocusNode _userFou = FocusNode();
  FocusNode _passFou = FocusNode();


  void dispose() {
    _passC.dispose();
    _userC.dispose();
    _userFou.dispose();
    _passFou.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(context),
      child: Builder(
        builder: (context) {
          LoginProvider smp = Provider.of<LoginProvider>(context);

          return Scaffold(
              body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            child: smp.loadding == true
                ? loaddingView()
                : SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 50),
                            child: CircleAvatar(
                                radius: 65,
                                backgroundColor:
                                    Color.fromRGBO(48, 128, 121, 1),
                                backgroundImage: AssetImage('assets/qu.png'))),
                        inputView_login(S().login_user_input, _userC, _userFou,
                            smp, context, 'id'),
                        inputView_login(S().login_pass_input, _passC, _passFou,
                            smp, context, 'ps'),
                        //   noNameView(context)
                        queRen(context, smp),
                      ],
                    ),
                  ),
          ));
        },
      ),
    );
  }
}

queRen(context, smp) {
  return Container(
    width: 100,
    margin: const EdgeInsets.only(left: 20, right: 20),
    child: ElevatedButton(
      child: Text(S().login_cmp),
      onPressed: () async {
        if (smp.userId == null || smp.userId == '') {
          showToastView(S().login_userId_isNull, context, 'center');
          return;
        }
        if (smp.passWrod == null || smp.passWrod == '') {
          showToastView(S().login_passwd_isNull, context, 'center');
          return;
        }
        await smp.login(context);
      },
    ),
  );
}
