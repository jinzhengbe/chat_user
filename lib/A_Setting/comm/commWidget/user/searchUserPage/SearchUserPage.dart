
import 'package:chat_user/A_Setting/comm/commWidget/loading.dart';
import 'package:chat_user/A_Setting/comm/commWidget/user/searchUserPage/provider/searchUserProvider.dart';
import 'package:chat_user/A_Setting/comm/commWidget/user/searchUserPage/searchedView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chat_user/generated/l10n.dart';

import '../../../commStyle/style.dart';

class SearchUserPage extends StatelessWidget {
  const SearchUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SearchUserProvider(context),
      child: Builder(
        builder: (context) {
          SearchUserProvider smp = Provider.of<SearchUserProvider>(context);

          return Scaffold(
            appBar: AppBar(
              title: Text(S().search_user),
            ),
            body: widthScreen > 700
                ? _searchUser(smp, context)
                : SafeArea(child: _searchUser(smp, context)),
          );
        },
      ),
    );
  }

  _searchUser(smp, context) {
    return Container(
      child: Column(
        children: [
          _searchView(smp, context),
          Expanded(
              child: smp.loadding == true
                  ? loaddingView()
                  : searchedView(smp, context))
        ],
      ),
    );
  }

  _searchView(smp, context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
              child: Container(
                child: TextField(
                  controller: smp.contC,
                  autofocus: true,
                  onChanged: (t){
                    smp.findUser_name(context);
                  },
                  onSubmitted: (t){
                    smp.findUser_name(context);
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: S().search_user),
                ),
              )),
          InkWell(
            onTap: () {
              smp.findUser_name(context);
            },
            child: Chip(
                label: Container(
                  width: 30,
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: const Icon(Icons.search),
                )),
          )
        ],
      ),
    );
  }
}
