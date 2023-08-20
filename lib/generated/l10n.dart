// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `取了么-韩国东大门服装`
  String get title {
    return Intl.message(
      '取了么-韩国东大门服装',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `hello`
  String get hello {
    return Intl.message(
      'hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a language`
  String get sel_lang {
    return Intl.message(
      'Please choose a language',
      name: 'sel_lang',
      desc: '',
      args: [],
    );
  }

  /// `WeChat Id was  copied `
  String get copyed {
    return Intl.message(
      'WeChat Id was  copied ',
      name: 'copyed',
      desc: '',
      args: [],
    );
  }

  /// `Cp address`
  String get cpAddress {
    return Intl.message(
      'Cp address',
      name: 'cpAddress',
      desc: '',
      args: [],
    );
  }

  /// `Choose a language`
  String get lang_sale {
    return Intl.message(
      'Choose a language',
      name: 'lang_sale',
      desc: '',
      args: [],
    );
  }

  /// `English selected`
  String get lang_saled_lang {
    return Intl.message(
      'English selected',
      name: 'lang_saled_lang',
      desc: '',
      args: [],
    );
  }

  /// `The selected option will take effect after reboot`
  String get lang_changed {
    return Intl.message(
      'The selected option will take effect after reboot',
      name: 'lang_changed',
      desc: '',
      args: [],
    );
  }

  /// `Login Please`
  String get login_title {
    return Intl.message(
      'Login Please',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `existing user`
  String get have_name {
    return Intl.message(
      'existing user',
      name: 'have_name',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get regin {
    return Intl.message(
      'Register',
      name: 'regin',
      desc: '',
      args: [],
    );
  }

  /// `old_num`
  String get old_num {
    return Intl.message(
      'old_num',
      name: 'old_num',
      desc: '',
      args: [],
    );
  }

  /// `Delivery tracking`
  String get search_wuliu {
    return Intl.message(
      'Delivery tracking',
      name: 'search_wuliu',
      desc: '',
      args: [],
    );
  }

  /// `check_id`
  String get dian_id {
    return Intl.message(
      'check_id',
      name: 'dian_id',
      desc: '',
      args: [],
    );
  }

  /// `Delivery_id`
  String get fa_id {
    return Intl.message(
      'Delivery_id',
      name: 'fa_id',
      desc: '',
      args: [],
    );
  }

  /// `Index`
  String get xuhao {
    return Intl.message(
      'Index',
      name: 'xuhao',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get mingmu {
    return Intl.message(
      'About',
      name: 'mingmu',
      desc: '',
      args: [],
    );
  }

  /// `ASK`
  String get liuyan {
    return Intl.message(
      'ASK',
      name: 'liuyan',
      desc: '',
      args: [],
    );
  }

  /// `Original picture`
  String get yuantu {
    return Intl.message(
      'Original picture',
      name: 'yuantu',
      desc: '',
      args: [],
    );
  }

  /// `Input shop number`
  String get souhao {
    return Intl.message(
      'Input shop number',
      name: 'souhao',
      desc: '',
      args: [],
    );
  }

  /// `check_time`
  String get dian_time {
    return Intl.message(
      'check_time',
      name: 'dian_time',
      desc: '',
      args: [],
    );
  }

  /// `Add awaiting pickup`
  String get add_quhuo {
    return Intl.message(
      'Add awaiting pickup',
      name: 'add_quhuo',
      desc: '',
      args: [],
    );
  }

  /// `swipe to the left`
  String get sel_hao {
    return Intl.message(
      'swipe to the left',
      name: 'sel_hao',
      desc: '',
      args: [],
    );
  }

  /// `Save photo locally`
  String get local_dwon {
    return Intl.message(
      'Save photo locally',
      name: 'local_dwon',
      desc: '',
      args: [],
    );
  }

  /// `！！！There is an issue with the order status, please check and proceed with procurement if necessary.！！！`
  String get error_order {
    return Intl.message(
      '！！！There is an issue with the order status, please check and proceed with procurement if necessary.！！！',
      name: 'error_order',
      desc: '',
      args: [],
    );
  }

  /// `Please input the quantity of acting `
  String get need_weisong_num {
    return Intl.message(
      'Please input the quantity of acting ',
      name: 'need_weisong_num',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to change the user`
  String get change_user {
    return Intl.message(
      'Are you sure you want to change the user',
      name: 'change_user',
      desc: '',
      args: [],
    );
  }

  /// `Mark`
  String get fahuo_bianhao {
    return Intl.message(
      'Mark',
      name: 'fahuo_bianhao',
      desc: '',
      args: [],
    );
  }

  /// `Select File`
  String get sale_file {
    return Intl.message(
      'Select File',
      name: 'sale_file',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get yihuifu {
    return Intl.message(
      'Reply',
      name: 'yihuifu',
      desc: '',
      args: [],
    );
  }

  /// `Tracking number`
  String get wuliudanhao {
    return Intl.message(
      'Tracking number',
      name: 'wuliudanhao',
      desc: '',
      args: [],
    );
  }

  /// `buy info`
  String get okbeizhu {
    return Intl.message(
      'buy info',
      name: 'okbeizhu',
      desc: '',
      args: [],
    );
  }

  /// `Ordering info`
  String get yifubeizhu {
    return Intl.message(
      'Ordering info',
      name: 'yifubeizhu',
      desc: '',
      args: [],
    );
  }

  /// `tracking`
  String get kuaidi {
    return Intl.message(
      'tracking',
      name: 'kuaidi',
      desc: '',
      args: [],
    );
  }

  /// `Save with photo`
  String get save_pic {
    return Intl.message(
      'Save with photo',
      name: 'save_pic',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled pickup`
  String get weisong_quhuo {
    return Intl.message(
      'Scheduled pickup',
      name: 'weisong_quhuo',
      desc: '',
      args: [],
    );
  }

  /// `Order update`
  String get order_gengxin {
    return Intl.message(
      'Order update',
      name: 'order_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Purchase update`
  String get caigou_gengxin {
    return Intl.message(
      'Purchase update',
      name: 'caigou_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Delivery update`
  String get fahuo_gengxin {
    return Intl.message(
      'Delivery update',
      name: 'fahuo_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Order check update`
  String get dianhuo_gengxin {
    return Intl.message(
      'Order check update',
      name: 'dianhuo_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Logistics update`
  String get wuliu_gengxin {
    return Intl.message(
      'Logistics update',
      name: 'wuliu_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Billing update`
  String get zhangdan_gengxin {
    return Intl.message(
      'Billing update',
      name: 'zhangdan_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `additional time`
  String get add_time {
    return Intl.message(
      'additional time',
      name: 'add_time',
      desc: '',
      args: [],
    );
  }

  /// `Employee Name `
  String get zhiyuan_name {
    return Intl.message(
      'Employee Name ',
      name: 'zhiyuan_name',
      desc: '',
      args: [],
    );
  }

  /// `Employee Phone `
  String get zhiyuan_phone {
    return Intl.message(
      'Employee Phone ',
      name: 'zhiyuan_phone',
      desc: '',
      args: [],
    );
  }

  /// `Permission`
  String get quanxian {
    return Intl.message(
      'Permission',
      name: 'quanxian',
      desc: '',
      args: [],
    );
  }

  /// `Manage`
  String get jingli {
    return Intl.message(
      'Manage',
      name: 'jingli',
      desc: '',
      args: [],
    );
  }

  /// `purchase`
  String get caigou {
    return Intl.message(
      'purchase',
      name: 'caigou',
      desc: '',
      args: [],
    );
  }

  /// `The system is updating data, which may take 3-5 minutes. It may take longer for the first use.`
  String get system_gengxin {
    return Intl.message(
      'The system is updating data, which may take 3-5 minutes. It may take longer for the first use.',
      name: 'system_gengxin',
      desc: '',
      args: [],
    );
  }

  /// `Leave of absence`
  String get stop {
    return Intl.message(
      'Leave of absence',
      name: 'stop',
      desc: '',
      args: [],
    );
  }

  /// `Billing`
  String get zhangdan {
    return Intl.message(
      'Billing',
      name: 'zhangdan',
      desc: '',
      args: [],
    );
  }

  /// `Please scan the QR code to register`
  String get regZid {
    return Intl.message(
      'Please scan the QR code to register',
      name: 'regZid',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get bianhao {
    return Intl.message(
      'No',
      name: 'bianhao',
      desc: '',
      args: [],
    );
  }

  /// `HongKong`
  String get hk {
    return Intl.message(
      'HongKong',
      name: 'hk',
      desc: '',
      args: [],
    );
  }

  /// `MaCau`
  String get mk {
    return Intl.message(
      'MaCau',
      name: 'mk',
      desc: '',
      args: [],
    );
  }

  /// `TaiWan`
  String get tw {
    return Intl.message(
      'TaiWan',
      name: 'tw',
      desc: '',
      args: [],
    );
  }

  /// `Singapore`
  String get sp {
    return Intl.message(
      'Singapore',
      name: 'sp',
      desc: '',
      args: [],
    );
  }

  /// `China`
  String get cn {
    return Intl.message(
      'China',
      name: 'cn',
      desc: '',
      args: [],
    );
  }

  /// `America`
  String get us {
    return Intl.message(
      'America',
      name: 'us',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get jp {
    return Intl.message(
      'Japan',
      name: 'jp',
      desc: '',
      args: [],
    );
  }

  /// `Add shipping cost（with pic）`
  String get addwuliupic {
    return Intl.message(
      'Add shipping cost（with pic）',
      name: 'addwuliupic',
      desc: '',
      args: [],
    );
  }

  /// `Purchased Setting`
  String get caiGouSetting {
    return Intl.message(
      'Purchased Setting',
      name: 'caiGouSetting',
      desc: '',
      args: [],
    );
  }

  /// `Please input price`
  String get price_input {
    return Intl.message(
      'Please input price',
      name: 'price_input',
      desc: '',
      args: [],
    );
  }

  /// `Please input num`
  String get num_input {
    return Intl.message(
      'Please input num',
      name: 'num_input',
      desc: '',
      args: [],
    );
  }

  /// `Old price is `
  String get old_price {
    return Intl.message(
      'Old price is ',
      name: 'old_price',
      desc: '',
      args: [],
    );
  }

  /// `Update successed`
  String get yijiazai {
    return Intl.message(
      'Update successed',
      name: 'yijiazai',
      desc: '',
      args: [],
    );
  }

  /// `Register Successed`
  String get reg_ok {
    return Intl.message(
      'Register Successed',
      name: 'reg_ok',
      desc: '',
      args: [],
    );
  }

  /// `Input you name please`
  String get login_user_input {
    return Intl.message(
      'Input you name please',
      name: 'login_user_input',
      desc: '',
      args: [],
    );
  }

  /// `Input you password please`
  String get login_pass_input {
    return Intl.message(
      'Input you password please',
      name: 'login_pass_input',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_cmp {
    return Intl.message(
      'Login',
      name: 'login_cmp',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get login_cancel {
    return Intl.message(
      'Cancel',
      name: 'login_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get zhuangtai {
    return Intl.message(
      'Status',
      name: 'zhuangtai',
      desc: '',
      args: [],
    );
  }

  /// `Sended`
  String get sended {
    return Intl.message(
      'Sended',
      name: 'sended',
      desc: '',
      args: [],
    );
  }

  /// `Need Send`
  String get needSend {
    return Intl.message(
      'Need Send',
      name: 'needSend',
      desc: '',
      args: [],
    );
  }

  /// `Data initialization`
  String get qingkongData {
    return Intl.message(
      'Data initialization',
      name: 'qingkongData',
      desc: '',
      args: [],
    );
  }

  /// `Please select floor`
  String get lou_select {
    return Intl.message(
      'Please select floor',
      name: 'lou_select',
      desc: '',
      args: [],
    );
  }

  /// `Please select number`
  String get hao_select {
    return Intl.message(
      'Please select number',
      name: 'hao_select',
      desc: '',
      args: [],
    );
  }

  /// `Please select Or input num`
  String get input_numOr_select {
    return Intl.message(
      'Please select Or input num',
      name: 'input_numOr_select',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Total Kg`
  String get total_kg {
    return Intl.message(
      'Total Kg',
      name: 'total_kg',
      desc: '',
      args: [],
    );
  }

  /// `Input Kg please`
  String get input_kg {
    return Intl.message(
      'Input Kg please',
      name: 'input_kg',
      desc: '',
      args: [],
    );
  }

  /// `Unit price of freight`
  String get yunfei {
    return Intl.message(
      'Unit price of freight',
      name: 'yunfei',
      desc: '',
      args: [],
    );
  }

  /// `Total Number`
  String get total_jian {
    return Intl.message(
      'Total Number',
      name: 'total_jian',
      desc: '',
      args: [],
    );
  }

  /// `Kg`
  String get kg {
    return Intl.message(
      'Kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `Unit price of freight is null, Please longPress the Unit price`
  String get yunfei_null {
    return Intl.message(
      'Unit price of freight is null, Please longPress the Unit price',
      name: 'yunfei_null',
      desc: '',
      args: [],
    );
  }

  /// `Have null kg`
  String get have_null_kg {
    return Intl.message(
      'Have null kg',
      name: 'have_null_kg',
      desc: '',
      args: [],
    );
  }

  /// `Select pictuers`
  String get sale_pic {
    return Intl.message(
      'Select pictuers',
      name: 'sale_pic',
      desc: '',
      args: [],
    );
  }

  /// `Need Two options`
  String get selectTwo {
    return Intl.message(
      'Need Two options',
      name: 'selectTwo',
      desc: '',
      args: [],
    );
  }

  /// `Payed before`
  String get weisongChu {
    return Intl.message(
      'Payed before',
      name: 'weisongChu',
      desc: '',
      args: [],
    );
  }

  /// `Records`
  String get tiaoJilu {
    return Intl.message(
      'Records',
      name: 'tiaoJilu',
      desc: '',
      args: [],
    );
  }

  /// `History of purchase`
  String get caigouxinxi {
    return Intl.message(
      'History of purchase',
      name: 'caigouxinxi',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get null_searched {
    return Intl.message(
      'No results found',
      name: 'null_searched',
      desc: '',
      args: [],
    );
  }

  /// `You must select one or more options`
  String get selectOne {
    return Intl.message(
      'You must select one or more options',
      name: 'selectOne',
      desc: '',
      args: [],
    );
  }

  /// `Amount > 0`
  String get dayuLing {
    return Intl.message(
      'Amount > 0',
      name: 'dayuLing',
      desc: '',
      args: [],
    );
  }

  /// `Amount < 0`
  String get xiaoyuLing {
    return Intl.message(
      'Amount < 0',
      name: 'xiaoyuLing',
      desc: '',
      args: [],
    );
  }

  /// `Amount = 0`
  String get dengyuLing {
    return Intl.message(
      'Amount = 0',
      name: 'dengyuLing',
      desc: '',
      args: [],
    );
  }

  /// `In stock`
  String get yiDianQingdan {
    return Intl.message(
      'In stock',
      name: 'yiDianQingdan',
      desc: '',
      args: [],
    );
  }

  /// `Current balance`
  String get nowYu {
    return Intl.message(
      'Current balance',
      name: 'nowYu',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get user_search {
    return Intl.message(
      'Customer',
      name: 'user_search',
      desc: '',
      args: [],
    );
  }

  /// `Arrears`
  String get qiankuan {
    return Intl.message(
      'Arrears',
      name: 'qiankuan',
      desc: '',
      args: [],
    );
  }

  /// `Add Customer`
  String get adduser {
    return Intl.message(
      'Add Customer',
      name: 'adduser',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get user_dizhi {
    return Intl.message(
      'Address',
      name: 'user_dizhi',
      desc: '',
      args: [],
    );
  }

  /// `Not applicable`
  String get null_user {
    return Intl.message(
      'Not applicable',
      name: 'null_user',
      desc: '',
      args: [],
    );
  }

  /// `Username is empty`
  String get null_userName {
    return Intl.message(
      'Username is empty',
      name: 'null_userName',
      desc: '',
      args: [],
    );
  }

  /// `UserCode is empty`
  String get null_mark {
    return Intl.message(
      'UserCode is empty',
      name: 'null_mark',
      desc: '',
      args: [],
    );
  }

  /// `rate is empty`
  String get null_daigou {
    return Intl.message(
      'rate is empty',
      name: 'null_daigou',
      desc: '',
      args: [],
    );
  }

  /// `region is empty`
  String get null_diqu {
    return Intl.message(
      'region is empty',
      name: 'null_diqu',
      desc: '',
      args: [],
    );
  }

  /// `Have overage`
  String get shengyu {
    return Intl.message(
      'Have overage',
      name: 'shengyu',
      desc: '',
      args: [],
    );
  }

  /// `pay the fee(%)`
  String get user_daifu {
    return Intl.message(
      'pay the fee(%)',
      name: 'user_daifu',
      desc: '',
      args: [],
    );
  }

  /// `Add shipping cost`
  String get addWuliu {
    return Intl.message(
      'Add shipping cost',
      name: 'addWuliu',
      desc: '',
      args: [],
    );
  }

  /// `Sort by brand`
  String get dian_shang {
    return Intl.message(
      'Sort by brand',
      name: 'dian_shang',
      desc: '',
      args: [],
    );
  }

  /// `Checked`
  String get yidian {
    return Intl.message(
      'Checked',
      name: 'yidian',
      desc: '',
      args: [],
    );
  }

  /// `Balance display`
  String get showyu {
    return Intl.message(
      'Balance display',
      name: 'showyu',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the amount you spent`
  String get zhichujin {
    return Intl.message(
      'Please enter the amount you spent',
      name: 'zhichujin',
      desc: '',
      args: [],
    );
  }

  /// `Other expenses`
  String get otherZhchu {
    return Intl.message(
      'Other expenses',
      name: 'otherZhchu',
      desc: '',
      args: [],
    );
  }

  /// `If you have other expenses, please enter them here`
  String get ohterShuoming {
    return Intl.message(
      'If you have other expenses, please enter them here',
      name: 'ohterShuoming',
      desc: '',
      args: [],
    );
  }

  /// `Hide balance`
  String get hiddYu {
    return Intl.message(
      'Hide balance',
      name: 'hiddYu',
      desc: '',
      args: [],
    );
  }

  /// `Reset to 0`
  String get qingliing {
    return Intl.message(
      'Reset to 0',
      name: 'qingliing',
      desc: '',
      args: [],
    );
  }

  /// `Balance is changed to 0`
  String get queRenqingling {
    return Intl.message(
      'Balance is changed to 0',
      name: 'queRenqingling',
      desc: '',
      args: [],
    );
  }

  /// `After adding the shipping cost, \nif the stated information is not correct\nAfter going to the previous page, you can come back to the current page. `
  String get reBack {
    return Intl.message(
      'After adding the shipping cost, \nif the stated information is not correct\nAfter going to the previous page, you can come back to the current page. ',
      name: 'reBack',
      desc: '',
      args: [],
    );
  }

  /// `Total balance `
  String get sysTemYu {
    return Intl.message(
      'Total balance ',
      name: 'sysTemYu',
      desc: '',
      args: [],
    );
  }

  /// `Sort by customer`
  String get dian_user {
    return Intl.message(
      'Sort by customer',
      name: 'dian_user',
      desc: '',
      args: [],
    );
  }

  /// `WaitingList All(Included in the billing list)`
  String get weisonglist {
    return Intl.message(
      'WaitingList All(Included in the billing list)',
      name: 'weisonglist',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the amount`
  String get input_jiner {
    return Intl.message(
      'Please enter the amount',
      name: 'input_jiner',
      desc: '',
      args: [],
    );
  }

  /// `Username can not be empty`
  String get login_userId_isNull {
    return Intl.message(
      'Username can not be empty',
      name: 'login_userId_isNull',
      desc: '',
      args: [],
    );
  }

  /// `Password can not be empty`
  String get login_passwd_isNull {
    return Intl.message(
      'Password can not be empty',
      name: 'login_passwd_isNull',
      desc: '',
      args: [],
    );
  }

  /// `Username or Password error`
  String get login_passwd_username_error {
    return Intl.message(
      'Username or Password error',
      name: 'login_passwd_username_error',
      desc: '',
      args: [],
    );
  }

  /// `Login successful`
  String get login_success {
    return Intl.message(
      'Login successful',
      name: 'login_success',
      desc: '',
      args: [],
    );
  }

  /// `Login failed`
  String get login_faile {
    return Intl.message(
      'Login failed',
      name: 'login_faile',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get order_new {
    return Intl.message(
      'New Order',
      name: 'order_new',
      desc: '',
      args: [],
    );
  }

  /// `New User`
  String get user_new {
    return Intl.message(
      'New User',
      name: 'user_new',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get order_search {
    return Intl.message(
      'Search',
      name: 'order_search',
      desc: '',
      args: [],
    );
  }

  /// `Waiting Order`
  String get order_weisong {
    return Intl.message(
      'Waiting Order',
      name: 'order_weisong',
      desc: '',
      args: [],
    );
  }

  /// `Purchasing mangae`
  String get order_caigou_mainage {
    return Intl.message(
      'Purchasing mangae',
      name: 'order_caigou_mainage',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get order_total {
    return Intl.message(
      'Total',
      name: 'order_total',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hidd {
    return Intl.message(
      'Hide',
      name: 'hidd',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get order_save {
    return Intl.message(
      'Saved',
      name: 'order_save',
      desc: '',
      args: [],
    );
  }

  /// `Purchased`
  String get order_state_ok {
    return Intl.message(
      'Purchased',
      name: 'order_state_ok',
      desc: '',
      args: [],
    );
  }

  /// `Ordering`
  String get order_state_weisong {
    return Intl.message(
      'Ordering',
      name: 'order_state_weisong',
      desc: '',
      args: [],
    );
  }

  /// `Stock out`
  String get order_state_over {
    return Intl.message(
      'Stock out',
      name: 'order_state_over',
      desc: '',
      args: [],
    );
  }

  /// `Problem`
  String get order_state_wenti {
    return Intl.message(
      'Problem',
      name: 'order_state_wenti',
      desc: '',
      args: [],
    );
  }

  /// `postpay`
  String get order_state_houfu {
    return Intl.message(
      'postpay',
      name: 'order_state_houfu',
      desc: '',
      args: [],
    );
  }

  /// `Been to`
  String get order_state_pass {
    return Intl.message(
      'Been to',
      name: 'order_state_pass',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save_button {
    return Intl.message(
      'Save',
      name: 'save_button',
      desc: '',
      args: [],
    );
  }

  /// `Need Save`
  String get needsave {
    return Intl.message(
      'Need Save',
      name: 'needsave',
      desc: '',
      args: [],
    );
  }

  /// `The program will close after 3 seconds `
  String get exitP {
    return Intl.message(
      'The program will close after 3 seconds ',
      name: 'exitP',
      desc: '',
      args: [],
    );
  }

  /// `Purchas`
  String get main_caigou {
    return Intl.message(
      'Purchas',
      name: 'main_caigou',
      desc: '',
      args: [],
    );
  }

  /// `Pick up`
  String get main_quhuo {
    return Intl.message(
      'Pick up',
      name: 'main_quhuo',
      desc: '',
      args: [],
    );
  }

  /// `Check order`
  String get main_dianhuo {
    return Intl.message(
      'Check order',
      name: 'main_dianhuo',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get main_fahuo {
    return Intl.message(
      'Delivery',
      name: 'main_fahuo',
      desc: '',
      args: [],
    );
  }

  /// `Buhuo`
  String get main_buhuo {
    return Intl.message(
      'Buhuo',
      name: 'main_buhuo',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get shangCheng {
    return Intl.message(
      'Building',
      name: 'shangCheng',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get loucheng {
    return Intl.message(
      'Floor',
      name: 'loucheng',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get haoShu {
    return Intl.message(
      'Number',
      name: 'haoShu',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get Buy {
    return Intl.message(
      'Buy',
      name: 'Buy',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get del {
    return Intl.message(
      'Delete',
      name: 'del',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get tishi {
    return Intl.message(
      '',
      name: 'tishi',
      desc: '',
      args: [],
    );
  }

  /// `Logistic`
  String get wuliu {
    return Intl.message(
      'Logistic',
      name: 'wuliu',
      desc: '',
      args: [],
    );
  }

  /// `Is buyying,Are you sure you want to finish？`
  String get caigouIng_other_del {
    return Intl.message(
      'Is buyying,Are you sure you want to finish？',
      name: 'caigouIng_other_del',
      desc: '',
      args: [],
    );
  }

  /// `Please enter quantity or Remark`
  String get num_beizhu_null {
    return Intl.message(
      'Please enter quantity or Remark',
      name: 'num_beizhu_null',
      desc: '',
      args: [],
    );
  }

  /// `Not anything`
  String get nothing {
    return Intl.message(
      'Not anything',
      name: 'nothing',
      desc: '',
      args: [],
    );
  }

  /// `Only Buy New`
  String get new_buy {
    return Intl.message(
      'Only Buy New',
      name: 'new_buy',
      desc: '',
      args: [],
    );
  }

  /// `Buy All`
  String get new_all {
    return Intl.message(
      'Buy All',
      name: 'new_all',
      desc: '',
      args: [],
    );
  }

  /// `Amount to start`
  String get caigou_start_jin {
    return Intl.message(
      'Amount to start',
      name: 'caigou_start_jin',
      desc: '',
      args: [],
    );
  }

  /// `Please input Amount`
  String get caigou_input_start_jin {
    return Intl.message(
      'Please input Amount',
      name: 'caigou_input_start_jin',
      desc: '',
      args: [],
    );
  }

  /// `Purchasing。。。`
  String get caigouIng {
    return Intl.message(
      'Purchasing。。。',
      name: 'caigouIng',
      desc: '',
      args: [],
    );
  }

  /// `Purchas Ended`
  String get caigouEnd {
    return Intl.message(
      'Purchas Ended',
      name: 'caigouEnd',
      desc: '',
      args: [],
    );
  }

  /// `Purchas Id`
  String get caigou_id {
    return Intl.message(
      'Purchas Id',
      name: 'caigou_id',
      desc: '',
      args: [],
    );
  }

  /// `Hidd`
  String get yinchang {
    return Intl.message(
      'Hidd',
      name: 'yinchang',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get xianshi {
    return Intl.message(
      'Show',
      name: 'xianshi',
      desc: '',
      args: [],
    );
  }

  /// `Hive Order need Edit`
  String get needEdit_caigou {
    return Intl.message(
      'Hive Order need Edit',
      name: 'needEdit_caigou',
      desc: '',
      args: [],
    );
  }

  /// `Other man Purchasing。。。`
  String get caigouIng_other {
    return Intl.message(
      'Other man Purchasing。。。',
      name: 'caigouIng_other',
      desc: '',
      args: [],
    );
  }

  /// `start_buy`
  String get start_buy {
    return Intl.message(
      'start_buy',
      name: 'start_buy',
      desc: '',
      args: [],
    );
  }

  /// `Thousand`
  String get wan {
    return Intl.message(
      'Thousand',
      name: 'wan',
      desc: '',
      args: [],
    );
  }

  /// `No data change,Please check`
  String get cantSave {
    return Intl.message(
      'No data change,Please check',
      name: 'cantSave',
      desc: '',
      args: [],
    );
  }

  /// `NetWorkErro, Please try again`
  String get netWorkError {
    return Intl.message(
      'NetWorkErro, Please try again',
      name: 'netWorkError',
      desc: '',
      args: [],
    );
  }

  /// `Nothing to do`
  String get not_to_buy {
    return Intl.message(
      'Nothing to do',
      name: 'not_to_buy',
      desc: '',
      args: [],
    );
  }

  /// `Info Update...`
  String get updateInfo {
    return Intl.message(
      'Info Update...',
      name: 'updateInfo',
      desc: '',
      args: [],
    );
  }

  /// `EndBuy`
  String get endBuy {
    return Intl.message(
      'EndBuy',
      name: 'endBuy',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Modify`
  String get edit {
    return Intl.message(
      'Modify',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get num {
    return Intl.message(
      'Number',
      name: 'num',
      desc: '',
      args: [],
    );
  }

  /// `TotaL Order Num`
  String get zongshu {
    return Intl.message(
      'TotaL Order Num',
      name: 'zongshu',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied`
  String get noquanxian {
    return Intl.message(
      'Permission denied',
      name: 'noquanxian',
      desc: '',
      args: [],
    );
  }

  /// `Remark`
  String get beizhu {
    return Intl.message(
      'Remark',
      name: 'beizhu',
      desc: '',
      args: [],
    );
  }

  /// `Print`
  String get print {
    return Intl.message(
      'Print',
      name: 'print',
      desc: '',
      args: [],
    );
  }

  /// `Receipt photo`
  String get danjuPaizhao {
    return Intl.message(
      'Receipt photo',
      name: 'danjuPaizhao',
      desc: '',
      args: [],
    );
  }

  /// `Receipt`
  String get danju {
    return Intl.message(
      'Receipt',
      name: 'danju',
      desc: '',
      args: [],
    );
  }

  /// `Need Receipt`
  String get needDanju {
    return Intl.message(
      'Need Receipt',
      name: 'needDanju',
      desc: '',
      args: [],
    );
  }

  /// `Photograph`
  String get paizhao {
    return Intl.message(
      'Photograph',
      name: 'paizhao',
      desc: '',
      args: [],
    );
  }

  /// `Seperate`
  String get fendan {
    return Intl.message(
      'Seperate',
      name: 'fendan',
      desc: '',
      args: [],
    );
  }

  /// `Seperate successed`
  String get fendan_ok {
    return Intl.message(
      'Seperate successed',
      name: 'fendan_ok',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get save_ok {
    return Intl.message(
      'Saved',
      name: 'save_ok',
      desc: '',
      args: [],
    );
  }

  /// `Save error,Please Try again`
  String get save_shibai {
    return Intl.message(
      'Save error,Please Try again',
      name: 'save_shibai',
      desc: '',
      args: [],
    );
  }

  /// `Ship date`
  String get chuhuori {
    return Intl.message(
      'Ship date',
      name: 'chuhuori',
      desc: '',
      args: [],
    );
  }

  /// `Ship date is null`
  String get chuhuori_null {
    return Intl.message(
      'Ship date is null',
      name: 'chuhuori_null',
      desc: '',
      args: [],
    );
  }

  /// `More than the order quantity`
  String get num_tomaore {
    return Intl.message(
      'More than the order quantity',
      name: 'num_tomaore',
      desc: '',
      args: [],
    );
  }

  /// `All values are empty`
  String get nothing_input {
    return Intl.message(
      'All values are empty',
      name: 'nothing_input',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get main_zhangdan {
    return Intl.message(
      'State',
      name: 'main_zhangdan',
      desc: '',
      args: [],
    );
  }

  /// `Recommend`
  String get Home_tuijian {
    return Intl.message(
      'Recommend',
      name: 'Home_tuijian',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get Home_rigeng {
    return Intl.message(
      'Daily',
      name: 'Home_rigeng',
      desc: '',
      args: [],
    );
  }

  /// `MY`
  String get Home_my {
    return Intl.message(
      'MY',
      name: 'Home_my',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Cannot be less than 1`
  String get buNengZaiShaoLe {
    return Intl.message(
      'Cannot be less than 1',
      name: 'buNengZaiShaoLe',
      desc: '',
      args: [],
    );
  }

  /// `Show All Order`
  String get showAll_order {
    return Intl.message(
      'Show All Order',
      name: 'showAll_order',
      desc: '',
      args: [],
    );
  }

  /// `selected Order only`
  String get showOnley_order {
    return Intl.message(
      'selected Order only',
      name: 'showOnley_order',
      desc: '',
      args: [],
    );
  }

  /// `Not select any Order`
  String get not_select {
    return Intl.message(
      'Not select any Order',
      name: 'not_select',
      desc: '',
      args: [],
    );
  }

  /// `Order Id`
  String get orderBianhao {
    return Intl.message(
      'Order Id',
      name: 'orderBianhao',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get orderPage {
    return Intl.message(
      'Order',
      name: 'orderPage',
      desc: '',
      args: [],
    );
  }

  /// `Ordered`
  String get order {
    return Intl.message(
      'Ordered',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Show Detail`
  String get xiangqing {
    return Intl.message(
      'Show Detail',
      name: 'xiangqing',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get fankui {
    return Intl.message(
      'Feedback',
      name: 'fankui',
      desc: '',
      args: [],
    );
  }

  /// `Delivery time`
  String get fahuoTime {
    return Intl.message(
      'Delivery time',
      name: 'fahuoTime',
      desc: '',
      args: [],
    );
  }

  /// `Wait Delivery`
  String get fahuo_daifa {
    return Intl.message(
      'Wait Delivery',
      name: 'fahuo_daifa',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get fahuo_title {
    return Intl.message(
      'Delivery',
      name: 'fahuo_title',
      desc: '',
      args: [],
    );
  }

  /// `Delivery management`
  String get fahuo {
    return Intl.message(
      'Delivery management',
      name: 'fahuo',
      desc: '',
      args: [],
    );
  }

  /// `Deliveryed`
  String get yifahuo {
    return Intl.message(
      'Deliveryed',
      name: 'yifahuo',
      desc: '',
      args: [],
    );
  }

  /// `Mark is null`
  String get fahuo_title_null {
    return Intl.message(
      'Mark is null',
      name: 'fahuo_title_null',
      desc: '',
      args: [],
    );
  }

  /// `Pending Shipment`
  String get daifahuo {
    return Intl.message(
      'Pending Shipment',
      name: 'daifahuo',
      desc: '',
      args: [],
    );
  }

  /// `All Order`
  String get allOrder {
    return Intl.message(
      'All Order',
      name: 'allOrder',
      desc: '',
      args: [],
    );
  }

  /// `Buy Report`
  String get buyReport {
    return Intl.message(
      'Buy Report',
      name: 'buyReport',
      desc: '',
      args: [],
    );
  }

  /// `Watting`
  String get weisong {
    return Intl.message(
      'Watting',
      name: 'weisong',
      desc: '',
      args: [],
    );
  }

  /// `Defer`
  String get yanqi {
    return Intl.message(
      'Defer',
      name: 'yanqi',
      desc: '',
      args: [],
    );
  }

  /// `Stock out`
  String get overOrder {
    return Intl.message(
      'Stock out',
      name: 'overOrder',
      desc: '',
      args: [],
    );
  }

  /// `Need Reply`
  String get wentiOrder {
    return Intl.message(
      'Need Reply',
      name: 'wentiOrder',
      desc: '',
      args: [],
    );
  }

  /// `Payed`
  String get yijiesuan {
    return Intl.message(
      'Payed',
      name: 'yijiesuan',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get riqi {
    return Intl.message(
      'Date',
      name: 'riqi',
      desc: '',
      args: [],
    );
  }

  /// `ADD`
  String get add {
    return Intl.message(
      'ADD',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get ri {
    return Intl.message(
      'Day',
      name: 'ri',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get xiaosh {
    return Intl.message(
      'Hours',
      name: 'xiaosh',
      desc: '',
      args: [],
    );
  }

  /// `payment Info`
  String get fuKuanxinxi {
    return Intl.message(
      'payment Info',
      name: 'fuKuanxinxi',
      desc: '',
      args: [],
    );
  }

  /// `System payment Day is `
  String get systemJiesuan {
    return Intl.message(
      'System payment Day is ',
      name: 'systemJiesuan',
      desc: '',
      args: [],
    );
  }

  /// `remaining`
  String get daoQiShengyu {
    return Intl.message(
      'remaining',
      name: 'daoQiShengyu',
      desc: '',
      args: [],
    );
  }

  /// `When the payment date expires, the system is scheduled to suspend the service.\nTo continue using, please contact the administrator for payment`
  String get yiguoqi {
    return Intl.message(
      'When the payment date expires, the system is scheduled to suspend the service.\nTo continue using, please contact the administrator for payment',
      name: 'yiguoqi',
      desc: '',
      args: [],
    );
  }

  /// `For the normal operation of the system, please complete the payment before the payment date.\nIf payment is not made before the due date, the system will automatically stop`
  String get xintongdaoqi {
    return Intl.message(
      'For the normal operation of the system, please complete the payment before the payment date.\nIf payment is not made before the due date, the system will automatically stop',
      name: 'xintongdaoqi',
      desc: '',
      args: [],
    );
  }

  /// `Apple developer membership expires, pay the Apple developer annual fee,\nYou must maintain your membership for the system to function normally.`
  String get pingguohuiyuan {
    return Intl.message(
      'Apple developer membership expires, pay the Apple developer annual fee,\nYou must maintain your membership for the system to function normally.',
      name: 'pingguohuiyuan',
      desc: '',
      args: [],
    );
  }

  /// `Balance of the day`
  String get todayYU {
    return Intl.message(
      'Balance of the day',
      name: 'todayYU',
      desc: '',
      args: [],
    );
  }

  /// `Input order Id`
  String get searOrder_oid {
    return Intl.message(
      'Input order Id',
      name: 'searOrder_oid',
      desc: '',
      args: [],
    );
  }

  /// `Before Pay`
  String get jiesuanqian {
    return Intl.message(
      'Before Pay',
      name: 'jiesuanqian',
      desc: '',
      args: [],
    );
  }

  /// `After Pay`
  String get jiesuanhou {
    return Intl.message(
      'After Pay',
      name: 'jiesuanhou',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get jieSuanDan {
    return Intl.message(
      'Invoice',
      name: 'jieSuanDan',
      desc: '',
      args: [],
    );
  }

  /// `Invoice No`
  String get jiesuandanhao {
    return Intl.message(
      'Invoice No',
      name: 'jiesuandanhao',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a starting amount`
  String get kaiShiJiner {
    return Intl.message(
      'Please enter a starting amount',
      name: 'kaiShiJiner',
      desc: '',
      args: [],
    );
  }

  /// `Wait to pay`
  String get jiesuan_daiJieSuan {
    return Intl.message(
      'Wait to pay',
      name: 'jiesuan_daiJieSuan',
      desc: '',
      args: [],
    );
  }

  /// `Payed`
  String get jiesuan_yijiesuan {
    return Intl.message(
      'Payed',
      name: 'jiesuan_yijiesuan',
      desc: '',
      args: [],
    );
  }

  /// `Remit`
  String get jiesuan_ruzhang {
    return Intl.message(
      'Remit',
      name: 'jiesuan_ruzhang',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get jiesuan_zhichu {
    return Intl.message(
      'Expenses',
      name: 'jiesuan_zhichu',
      desc: '',
      args: [],
    );
  }

  /// `Current balance`
  String get nowyu {
    return Intl.message(
      'Current balance',
      name: 'nowyu',
      desc: '',
      args: [],
    );
  }

  /// `Into account`
  String get inco {
    return Intl.message(
      'Into account',
      name: 'inco',
      desc: '',
      args: [],
    );
  }

  /// `pay out`
  String get outcom {
    return Intl.message(
      'pay out',
      name: 'outcom',
      desc: '',
      args: [],
    );
  }

  /// `fee`
  String get daigoufei {
    return Intl.message(
      'fee',
      name: 'daigoufei',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get xiaoji {
    return Intl.message(
      'Total',
      name: 'xiaoji',
      desc: '',
      args: [],
    );
  }

  /// `Popel`
  String get total_ren {
    return Intl.message(
      'Popel',
      name: 'total_ren',
      desc: '',
      args: [],
    );
  }

  /// `You can enter up to ten thousand units.  Example: if 1,000,000, enter 100`
  String get input_wan {
    return Intl.message(
      'You can enter up to ten thousand units.  Example: if 1,000,000, enter 100',
      name: 'input_wan',
      desc: '',
      args: [],
    );
  }

  /// `buyer Invoice`
  String get caigouJiesuan {
    return Intl.message(
      'buyer Invoice',
      name: 'caigouJiesuan',
      desc: '',
      args: [],
    );
  }

  /// `Add Wiatting`
  String get quhuo {
    return Intl.message(
      'Add Wiatting',
      name: 'quhuo',
      desc: '',
      args: [],
    );
  }

  /// `Exchange rate please`
  String get input_huivl {
    return Intl.message(
      'Exchange rate please',
      name: 'input_huivl',
      desc: '',
      args: [],
    );
  }

  /// `Remark`
  String get quhuo_beizhu {
    return Intl.message(
      'Remark',
      name: 'quhuo_beizhu',
      desc: '',
      args: [],
    );
  }

  /// `Remark Please`
  String get null_beizhu {
    return Intl.message(
      'Remark Please',
      name: 'null_beizhu',
      desc: '',
      args: [],
    );
  }

  /// `Please select a delivery date`
  String get selectdata {
    return Intl.message(
      'Please select a delivery date',
      name: 'selectdata',
      desc: '',
      args: [],
    );
  }

  /// `Reimburse`
  String get order_tuikuan {
    return Intl.message(
      'Reimburse',
      name: 'order_tuikuan',
      desc: '',
      args: [],
    );
  }

  /// `Purchase record`
  String get order_detal {
    return Intl.message(
      'Purchase record',
      name: 'order_detal',
      desc: '',
      args: [],
    );
  }

  /// `Please select Date`
  String get sale_data {
    return Intl.message(
      'Please select Date',
      name: 'sale_data',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get select_all {
    return Intl.message(
      'Select All',
      name: 'select_all',
      desc: '',
      args: [],
    );
  }

  /// `Cancel All`
  String get quXiao_all {
    return Intl.message(
      'Cancel All',
      name: 'quXiao_all',
      desc: '',
      args: [],
    );
  }

  /// `Billing amount `
  String get jiesuan_jiner {
    return Intl.message(
      'Billing amount ',
      name: 'jiesuan_jiner',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get jiesuan {
    return Intl.message(
      'Pay',
      name: 'jiesuan',
      desc: '',
      args: [],
    );
  }

  /// `Buy Time`
  String get caigou_time {
    return Intl.message(
      'Buy Time',
      name: 'caigou_time',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get jieSuanQingDan {
    return Intl.message(
      'Invoice',
      name: 'jieSuanQingDan',
      desc: '',
      args: [],
    );
  }

  /// `BILL TO`
  String get keHuMing {
    return Intl.message(
      'BILL TO',
      name: 'keHuMing',
      desc: '',
      args: [],
    );
  }

  /// `OK num`
  String get okNum {
    return Intl.message(
      'OK num',
      name: 'okNum',
      desc: '',
      args: [],
    );
  }

  /// `Over num`
  String get overNum {
    return Intl.message(
      'Over num',
      name: 'overNum',
      desc: '',
      args: [],
    );
  }

  /// `Watting num`
  String get weisongNum {
    return Intl.message(
      'Watting num',
      name: 'weisongNum',
      desc: '',
      args: [],
    );
  }

  /// `total payment`
  String get huokuan {
    return Intl.message(
      'total payment',
      name: 'huokuan',
      desc: '',
      args: [],
    );
  }

  /// `Need Pay`
  String get yingfu {
    return Intl.message(
      'Need Pay',
      name: 'yingfu',
      desc: '',
      args: [],
    );
  }

  /// `Foreign currency`
  String get waibi {
    return Intl.message(
      'Foreign currency',
      name: 'waibi',
      desc: '',
      args: [],
    );
  }

  /// `Korean Won ₩ `
  String get hanbi {
    return Intl.message(
      'Korean Won ₩ ',
      name: 'hanbi',
      desc: '',
      args: [],
    );
  }

  /// `Please key numbers`
  String get input_num {
    return Intl.message(
      'Please key numbers',
      name: 'input_num',
      desc: '',
      args: [],
    );
  }

  /// `No shipping today`
  String get todayNoLocal {
    return Intl.message(
      'No shipping today',
      name: 'todayNoLocal',
      desc: '',
      args: [],
    );
  }

  /// `Remaining orders all`
  String get shengyuDingdan {
    return Intl.message(
      'Remaining orders all',
      name: 'shengyuDingdan',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Already paid order `
  String get shengyuWeiSong {
    return Intl.message(
      'Remaining Already paid order ',
      name: 'shengyuWeiSong',
      desc: '',
      args: [],
    );
  }

  /// `waiting for reply`
  String get daihuifu {
    return Intl.message(
      'waiting for reply',
      name: 'daihuifu',
      desc: '',
      args: [],
    );
  }

  /// `Packing List`
  String get fahuoList {
    return Intl.message(
      'Packing List',
      name: 'fahuoList',
      desc: '',
      args: [],
    );
  }

  /// `Arrived`
  String get querenShouhuo {
    return Intl.message(
      'Arrived',
      name: 'querenShouhuo',
      desc: '',
      args: [],
    );
  }

  /// `Confirm arrival`
  String get querenDaohuo {
    return Intl.message(
      'Confirm arrival',
      name: 'querenDaohuo',
      desc: '',
      args: [],
    );
  }

  /// `Losted`
  String get yidiushi {
    return Intl.message(
      'Losted',
      name: 'yidiushi',
      desc: '',
      args: [],
    );
  }

  /// `If the delivery is not confirmed within 14 days，The system will automatically change to the arrival`
  String get zidongshouhuo {
    return Intl.message(
      'If the delivery is not confirmed within 14 days，The system will automatically change to the arrival',
      name: 'zidongshouhuo',
      desc: '',
      args: [],
    );
  }

  /// `Please select a mall `
  String get search_shang {
    return Intl.message(
      'Please select a mall ',
      name: 'search_shang',
      desc: '',
      args: [],
    );
  }

  /// `No Order Searched`
  String get nothingSearched {
    return Intl.message(
      'No Order Searched',
      name: 'nothingSearched',
      desc: '',
      args: [],
    );
  }

  /// `SearchPic`
  String get searchPic {
    return Intl.message(
      'SearchPic',
      name: 'searchPic',
      desc: '',
      args: [],
    );
  }

  /// `refresh`
  String get shuaxin {
    return Intl.message(
      'refresh',
      name: 'shuaxin',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get zhiyuan {
    return Intl.message(
      'Employee',
      name: 'zhiyuan',
      desc: '',
      args: [],
    );
  }

  /// `Cash flow`
  String get jinliu {
    return Intl.message(
      'Cash flow',
      name: 'jinliu',
      desc: '',
      args: [],
    );
  }

  /// `Purchase list`
  String get caigouqingdan {
    return Intl.message(
      'Purchase list',
      name: 'caigouqingdan',
      desc: '',
      args: [],
    );
  }

  /// `Wish`
  String get soucang {
    return Intl.message(
      'Wish',
      name: 'soucang',
      desc: '',
      args: [],
    );
  }

  /// `Add Order`
  String get addorder {
    return Intl.message(
      'Add Order',
      name: 'addorder',
      desc: '',
      args: [],
    );
  }

  /// `Please Input Remark `
  String get inputBeizhu {
    return Intl.message(
      'Please Input Remark ',
      name: 'inputBeizhu',
      desc: '',
      args: [],
    );
  }

  /// `Cannot be less than 0`
  String get xiaoyuLong {
    return Intl.message(
      'Cannot be less than 0',
      name: 'xiaoyuLong',
      desc: '',
      args: [],
    );
  }

  /// `Cannot be less than max`
  String get chaoguo {
    return Intl.message(
      'Cannot be less than max',
      name: 'chaoguo',
      desc: '',
      args: [],
    );
  }

  /// `Please input Brand`
  String get souBrand {
    return Intl.message(
      'Please input Brand',
      name: 'souBrand',
      desc: '',
      args: [],
    );
  }

  /// `notHaveData`
  String get notHaveData {
    return Intl.message(
      'notHaveData',
      name: 'notHaveData',
      desc: '',
      args: [],
    );
  }

  /// `LogOut`
  String get tuichu {
    return Intl.message(
      'LogOut',
      name: 'tuichu',
      desc: '',
      args: [],
    );
  }

  /// `Select mall`
  String get select_shang {
    return Intl.message(
      'Select mall',
      name: 'select_shang',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get quxiao {
    return Intl.message(
      'Cancel',
      name: 'quxiao',
      desc: '',
      args: [],
    );
  }

  /// `Input price Please`
  String get input_price_buhuo {
    return Intl.message(
      'Input price Please',
      name: 'input_price_buhuo',
      desc: '',
      args: [],
    );
  }

  /// `Can't be less than 1`
  String get buhuo_zuishao {
    return Intl.message(
      'Can\'t be less than 1',
      name: 'buhuo_zuishao',
      desc: '',
      args: [],
    );
  }

  /// `Add Order`
  String get buhuo {
    return Intl.message(
      'Add Order',
      name: 'buhuo',
      desc: '',
      args: [],
    );
  }

  /// `Input room num`
  String get haoinput {
    return Intl.message(
      'Input room num',
      name: 'haoinput',
      desc: '',
      args: [],
    );
  }

  /// `select_color `
  String get select_color {
    return Intl.message(
      'select_color ',
      name: 'select_color',
      desc: '',
      args: [],
    );
  }

  /// `Color cannot be empty`
  String get color_null {
    return Intl.message(
      'Color cannot be empty',
      name: 'color_null',
      desc: '',
      args: [],
    );
  }

  /// `Size cannot be empty`
  String get size_null {
    return Intl.message(
      'Size cannot be empty',
      name: 'size_null',
      desc: '',
      args: [],
    );
  }

  /// `Num cannot be empty`
  String get num_null {
    return Intl.message(
      'Num cannot be empty',
      name: 'num_null',
      desc: '',
      args: [],
    );
  }

  /// `Remarks cannot be empty`
  String get beizhu_null {
    return Intl.message(
      'Remarks cannot be empty',
      name: 'beizhu_null',
      desc: '',
      args: [],
    );
  }

  /// `Mall cannot be empty`
  String get shang_null {
    return Intl.message(
      'Mall cannot be empty',
      name: 'shang_null',
      desc: '',
      args: [],
    );
  }

  /// `Floor cannot be empty`
  String get lou_null {
    return Intl.message(
      'Floor cannot be empty',
      name: 'lou_null',
      desc: '',
      args: [],
    );
  }

  /// `Room num cannot be empty`
  String get hao_null {
    return Intl.message(
      'Room num cannot be empty',
      name: 'hao_null',
      desc: '',
      args: [],
    );
  }

  /// `progress is 0`
  String get null_jindu {
    return Intl.message(
      'progress is 0',
      name: 'null_jindu',
      desc: '',
      args: [],
    );
  }

  /// `Data Sending ... Please wait `
  String get loadding {
    return Intl.message(
      'Data Sending ... Please wait ',
      name: 'loadding',
      desc: '',
      args: [],
    );
  }

  /// `If you are not our member，Please scan the left Qrcode， Or Click on the blue font to Copy WeChat Id`
  String get scanOrCopy {
    return Intl.message(
      'If you are not our member，Please scan the left Qrcode， Or Click on the blue font to Copy WeChat Id',
      name: 'scanOrCopy',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get Home_order {
    return Intl.message(
      'Order',
      name: 'Home_order',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get home_new {
    return Intl.message(
      'New',
      name: 'home_new',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get new_order {
    return Intl.message(
      'New Order',
      name: 'new_order',
      desc: '',
      args: [],
    );
  }

  /// `Only buy new`
  String get buy_only_new {
    return Intl.message(
      'Only buy new',
      name: 'buy_only_new',
      desc: '',
      args: [],
    );
  }

  /// `All Order`
  String get buy_all {
    return Intl.message(
      'All Order',
      name: 'buy_all',
      desc: '',
      args: [],
    );
  }

  /// `Consignment order`
  String get order_daifu {
    return Intl.message(
      'Consignment order',
      name: 'order_daifu',
      desc: '',
      args: [],
    );
  }

  /// `Deadline Order`
  String get buy_all2 {
    return Intl.message(
      'Deadline Order',
      name: 'buy_all2',
      desc: '',
      args: [],
    );
  }

  /// `Only check new`
  String get dianhuo_only_new {
    return Intl.message(
      'Only check new',
      name: 'dianhuo_only_new',
      desc: '',
      args: [],
    );
  }

  /// `Check All order`
  String get dianhuo_all {
    return Intl.message(
      'Check All order',
      name: 'dianhuo_all',
      desc: '',
      args: [],
    );
  }

  /// `Pack All order`
  String get pack_all_need {
    return Intl.message(
      'Pack All order',
      name: 'pack_all_need',
      desc: '',
      args: [],
    );
  }

  /// `Only pack checked`
  String get pack_only_cheeckd {
    return Intl.message(
      'Only pack checked',
      name: 'pack_only_cheeckd',
      desc: '',
      args: [],
    );
  }

  /// `Bill management`
  String get billManage {
    return Intl.message(
      'Bill management',
      name: 'billManage',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete current order`
  String get del_order_comp_title {
    return Intl.message(
      'Are you sure you want to delete current order',
      name: 'del_order_comp_title',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get del_order_comp_ok {
    return Intl.message(
      'Confirm',
      name: 'del_order_comp_ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get del_order_comp_cel {
    return Intl.message(
      'Cancel',
      name: 'del_order_comp_cel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm successed`
  String get over_confirm {
    return Intl.message(
      'Confirm successed',
      name: 'over_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation failed, please try again`
  String get file_confirm {
    return Intl.message(
      'Confirmation failed, please try again',
      name: 'file_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Buy All`
  String get newOrder_buyAll {
    return Intl.message(
      'Buy All',
      name: 'newOrder_buyAll',
      desc: '',
      args: [],
    );
  }

  /// `Out form buylist`
  String get newOrder_outBuyList {
    return Intl.message(
      'Out form buylist',
      name: 'newOrder_outBuyList',
      desc: '',
      args: [],
    );
  }

  /// `Specification`
  String get guige {
    return Intl.message(
      'Specification',
      name: 'guige',
      desc: '',
      args: [],
    );
  }

  /// `Please select user first`
  String get user_select {
    return Intl.message(
      'Please select user first',
      name: 'user_select',
      desc: '',
      args: [],
    );
  }

  /// `New User`
  String get new_user {
    return Intl.message(
      'New User',
      name: 'new_user',
      desc: '',
      args: [],
    );
  }

  /// `UserMange`
  String get userManage {
    return Intl.message(
      'UserMange',
      name: 'userManage',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get user_diqu {
    return Intl.message(
      'Region',
      name: 'user_diqu',
      desc: '',
      args: [],
    );
  }

  /// `Purchasing fee`
  String get user_daigou {
    return Intl.message(
      'Purchasing fee',
      name: 'user_daigou',
      desc: '',
      args: [],
    );
  }

  /// `mark`
  String get user_mark {
    return Intl.message(
      'mark',
      name: 'user_mark',
      desc: '',
      args: [],
    );
  }

  /// `Freight`
  String get user_yunfei {
    return Intl.message(
      'Freight',
      name: 'user_yunfei',
      desc: '',
      args: [],
    );
  }

  /// `Exchange rate`
  String get user_huilv {
    return Intl.message(
      'Exchange rate',
      name: 'user_huilv',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get user_name {
    return Intl.message(
      'User Name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `User Passwd`
  String get user_passwd {
    return Intl.message(
      'User Passwd',
      name: 'user_passwd',
      desc: '',
      args: [],
    );
  }

  /// `Please search userName`
  String get search_user {
    return Intl.message(
      'Please search userName',
      name: 'search_user',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logOut {
    return Intl.message(
      'Logout',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Please Input `
  String get pleaseInput {
    return Intl.message(
      'Please Input ',
      name: 'pleaseInput',
      desc: '',
      args: [],
    );
  }

  /// `End buy`
  String get caigou_end {
    return Intl.message(
      'End buy',
      name: 'caigou_end',
      desc: '',
      args: [],
    );
  }

  /// `Need buy`
  String get needToBuy {
    return Intl.message(
      'Need buy',
      name: 'needToBuy',
      desc: '',
      args: [],
    );
  }

  /// `Order Data`
  String get order_data {
    return Intl.message(
      'Order Data',
      name: 'order_data',
      desc: '',
      args: [],
    );
  }

  /// `Order Id`
  String get order_id {
    return Intl.message(
      'Order Id',
      name: 'order_id',
      desc: '',
      args: [],
    );
  }

  /// `in stock`
  String get zhuangtaai_xianhuo {
    return Intl.message(
      'in stock',
      name: 'zhuangtaai_xianhuo',
      desc: '',
      args: [],
    );
  }

  /// `reservation`
  String get zhuangtaai_weisong {
    return Intl.message(
      'reservation',
      name: 'zhuangtaai_weisong',
      desc: '',
      args: [],
    );
  }

  /// `over`
  String get zhuangtaai_duanhuo {
    return Intl.message(
      'over',
      name: 'zhuangtaai_duanhuo',
      desc: '',
      args: [],
    );
  }

  /// `Split order`
  String get zhuangtaai_fendan {
    return Intl.message(
      'Split order',
      name: 'zhuangtaai_fendan',
      desc: '',
      args: [],
    );
  }

  /// `have problems`
  String get zhuangtaai_wenti {
    return Intl.message(
      'have problems',
      name: 'zhuangtaai_wenti',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get zhuangtaai_mairuDan {
    return Intl.message(
      'Coupon',
      name: 'zhuangtaai_mairuDan',
      desc: '',
      args: [],
    );
  }

  /// `pay on delivery`
  String get zhuangtaai_daofu {
    return Intl.message(
      'pay on delivery',
      name: 'zhuangtaai_daofu',
      desc: '',
      args: [],
    );
  }

  /// `Billed monthly`
  String get zhuangtaai_yuejie {
    return Intl.message(
      'Billed monthly',
      name: 'zhuangtaai_yuejie',
      desc: '',
      args: [],
    );
  }

  /// `Billed Week`
  String get zhuangtaai_zhoujie {
    return Intl.message(
      'Billed Week',
      name: 'zhuangtaai_zhoujie',
      desc: '',
      args: [],
    );
  }

  /// `Been to`
  String get zhuangtaai_luguo {
    return Intl.message(
      'Been to',
      name: 'zhuangtaai_luguo',
      desc: '',
      args: [],
    );
  }

  /// `On credit`
  String get zhuangtaai_jizhang {
    return Intl.message(
      'On credit',
      name: 'zhuangtaai_jizhang',
      desc: '',
      args: [],
    );
  }

  /// `Need Buy = `
  String get needBuy {
    return Intl.message(
      'Need Buy = ',
      name: 'needBuy',
      desc: '',
      args: [],
    );
  }

  /// `The customer you searched for could not be found`
  String get no_user_search {
    return Intl.message(
      'The customer you searched for could not be found',
      name: 'no_user_search',
      desc: '',
      args: [],
    );
  }

  /// ` All information of the secondary user will be deleted, \n including orders, bills, logistics, etc，\n Are you sure you want to delete`
  String get del_user_title {
    return Intl.message(
      ' All information of the secondary user will be deleted, \n including orders, bills, logistics, etc，\n Are you sure you want to delete',
      name: 'del_user_title',
      desc: '',
      args: [],
    );
  }

  /// `Need To Do`
  String get needTodo {
    return Intl.message(
      'Need To Do',
      name: 'needTodo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
