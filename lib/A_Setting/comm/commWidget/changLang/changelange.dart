import 'package:chat_user/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'changeLangProvider.dart';
import 'guojiaList.dart';

changeLangTanchuang(context) {
  showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return ChangeNotifierProvider(
        create: (_) => ChangeLangProvider(context),
        child: Builder(builder: (context) {
          ChangeLangProvider smp = Provider.of<ChangeLangProvider>(context);
          return AlertDialog(
            title: Container(child: Text(S().sel_lang)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[couryListView(smp, context)],
              ),
            ),
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const  EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CanelView(context),
                    queRen(context, smp),
                  ],
                ),
              )
            ],
          );
        }),
      );
    },
  );
}

queRen(context, smp) {
  return Container(
    width: 100,
    margin: const EdgeInsets.only(right: 20),
    child: ElevatedButton(
      child: Text(S().save),
      onPressed: () async {
        Navigator.pop(context);
      },
    ),
  );
}

CanelView(context) {
  return SizedBox(
      width: 100,
      child: ElevatedButton(
        child: Text(S().login_cancel),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ));
}

// selectLang() {
//   return Container(
//     width: 30,
//     padding: const  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(
//           color: Colors.grey,
//         )),
//     child: InkWell(
//       onTap: () {},
//       child: Image.asset(
//         'assets/images/contry/cn.jpeg',
//         height: 30,
//         width: 30,
//       ),
//     ),
//   );
// }
