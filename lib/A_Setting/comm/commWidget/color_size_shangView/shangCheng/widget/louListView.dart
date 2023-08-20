import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/shangCheng/provider/shangListPageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chat_user/generated/l10n.dart';
import 'bodyHaoView.dart';
import 'loubodyView.dart';

class louShow extends StatelessWidget {
  const louShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ShangListProvider(context),
      child: Builder(builder: (context) {
        ShangListProvider smp = Provider.of<ShangListProvider>(context);
        return Scaffold(
          appBar: AppBar(title: Text(smp.louShwo == true ?S().lou_select:S().hao_select,),), //louHaoTitleView(smp, context),
          body: smp.louShwo == true
              ? bodyLou(smp, context)
              : bodyHao(smp, context)
        );
      }),
    );
  }
}
