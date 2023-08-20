
import 'package:chat_user/A_Setting/comm/commFunction/toast.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/colorPage/priceView/inputPrice.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/colorPage/provider/colorProvider.dart';
import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/colorPage/selectOrder/selectOrder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../model.dart';
import '../../picView/picView.dart';
import 'colorAppbar.dart';
import 'colorListView.dart';

class colorPage extends StatefulWidget {
  const colorPage({Key? key}) : super(key: key);

  @override
  _colorPageState createState() => _colorPageState();
}

class _colorPageState extends State<colorPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ColorsProvider(context),
        child: Builder(builder: (context) {
          ColorsProvider smp = Provider.of<ColorsProvider>(context);
          return Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: coolorAppbar(context, smp),
              body: buhuoType == '1'
                  ? _colorView(smp, context)
                  : _quhuoView(smp, context));
        }));
  }

  _colorView(smp, context) {
    return Container(
      child: Column(
        children: [
          inputPriceView(smp, context),
          SizedBox(
            height: 200,
            child: selcetedOrderView(context, smp),
          ),
          Expanded(child: colorView(smp, context))
        ],
      ),
    );
  }

  _quhuoView(smp, context) {
    return ListView(
      children: [
        Container(height: 300, child: picView(pic, context)),
        buhuoType == '3' ? Container() : inputPriceView(smp, context),

        _textFView(_numC, S().num_input),
        _textFView(_quhuoC, S().quhuo_beizhu),
        _saveView(smp, context)
      ],
    );
  }


  TextEditingController _quhuoC = TextEditingController();
  TextEditingController _numC = TextEditingController();
  _saveView(smp, context) {
    return InkWell(
      onTap: () {
        var t = _quhuoC.text.toString();
        var _num = _numC.text.toString();
        if (_num == null || _num == '') {
          showToastView(S().num_null, context, 'center');
          return;
        }
        if (t == null || t == '') {
          showToastView(S().null_beizhu, context, 'center');
          return;
        }
        smp.saveQhuoBeizhu(t, context, _num);
        _quhuoC.clear();
        _numC.clear();
      },
      child: Chip(
        label: Text(S().save),
      ),
    );
  }

  _textFView(_c, title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: _c,
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: title),
      ),
    );
  }

}
