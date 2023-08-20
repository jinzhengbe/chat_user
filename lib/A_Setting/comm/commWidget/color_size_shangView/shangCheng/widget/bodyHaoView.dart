
import 'package:flutter/material.dart';
import 'package:chat_user/generated/l10n.dart';
import '../../../../commFunction/toast.dart';
import 'lou_hao_itemView.dart';
import 'louhaoTitleView.dart';

bodyHao(smp,context){

  return
    Container(
     // height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,)
              ),
              child: LouhaoInputView(S().input_numOr_select,smp.numC,smp,context)),
          _saveView(smp,context),
          Expanded(child:     smp.haoList == null || smp.haoList.length == 0
              ? _saveView(smp,context)
              : _haoListView(smp,context)),

        ],
      ),
    );
}
_haoListView(smp,context){
  return
    SizedBox(

      width: 400,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 60,
              mainAxisExtent: 45,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10),
          itemCount: smp.haoList.length,
          itemBuilder: (context, i) {
            var aa = smp.haoList[i];

            return louHaoItemView_tanchuang(aa,context,smp,'hao');
          }),
    );
}
_saveView(smp,context){
  return
    Container(
        child:InkWell(
          onTap: ()async{
            var t = smp.numC.text;
            if(t==null||t==''){
              showToastView('请输入',context,'center');
              return;
            }else{
              smp.setHao(t,context);
            }

          },
          child: Chip(
            backgroundColor: Colors.orange,
            label: Text('保存',style: TextStyle(
                color: Colors.white
            ),),),
        )
    );
}