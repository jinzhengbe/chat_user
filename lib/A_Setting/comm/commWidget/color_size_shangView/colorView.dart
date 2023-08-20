//
// import 'package:chat_user/A_Setting/comm/commWidget/color_size_shangView/sizeView.dart';
// import 'package:flutter/material.dart';
// import 'package:chat_user/A_Setting/model.dart';
//
// colorView(smp,context){
//
//
//   return
//       Container(
//         padding: const  EdgeInsets.symmetric(horizontal: 10),
//         child: ListView.builder(
//
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: colorList.length,
//             itemBuilder: (context,i){
//
//               var aa = colorList[i];
//           return
//
//           Card(
//             child:_colorItem(aa,smp,context,i) ,
//           )
//           ;
//         })
//       );
// }
//
// _colorItem(aa,smp,context,i){
//   return
//       Container(
//         padding: const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             colorItemView(aa),
//             Expanded(child: sizeView(aa,smp,context,i))
//           ],
//         ),
//       );
//
// }
//
// colorItemView(aa){
//   return
//     Container(
//         alignment: Alignment.center,
//         width:100,child:Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         colorTitleView(aa['cn']),
//         const SizedBox(height: 10,),
//         colorTitleView(aa['kr']),
//         const SizedBox(height: 10,),
//         colorTitleView(aa['en']),
//
//       ],
//     ));
// }
//
// colorTitleView(title){
//   return
//     Container(
//       child:  Text(title.toString(),style: const TextStyle(
//         fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue
//       ),),
//     );
// }