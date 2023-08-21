# base

    BaseProject

## 商城调用方法

    shangType == '1'  点击号数 返回之前页面
    shangType == '0'  进入颜色选择页面

## 安装注意

    flutter_downloader 控件的ios 设置要 进行一下 否则无法启动

## 排序List

    _shanglist.sort((item1, item2) => item2[tt].compareTo(item1[tt]));  // 从高到底
    
    _shanglist.sort((item1, item2) => item1[tt].compareTo(item2[tt]));

## 常用快捷键

     crtl + alt + l  整理代码
     pv   创建一个provider 文件
     cnc  创建一个新的stless 文件
     lst  创建 一个 listView.builder
     gst  创建一个 GridView.builder
     abo  创建一个 box 循环   

    pv

    import 'package:flutter/material.dart';
    class $NAME$ extends ChangeNotifier{
    
        $NAME$(){
        
        }
        bool _loadding = false;
        bool get loadding =>_loadding;
        
        setLoading(t){
            _loadding =t;
            notifyListeners();
        }
        bool _sisposed = false;
        
        @override
        notifyListeners() {
            if (!_sisposed) {
            super.notifyListeners();
            }
        }
    
        @override
        void dispose(){
        super.dispose();
            _sisposed = true;
        }
        
        
    }
    
    cnc

    import 'package:caigou_three/commStyle/style.dart';
    import 'package:caigou_three/commWidget/nullBodyView.dart';
    import 'package:flutter/material.dart';
    import 'package:provider/provider.dart';
    
    class $NAME$ extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) =>  $pvcc$(),
    child: Builder(builder: (context) {
        $pvcc$ smp = Provider.of<$pvcc$>(context);
        return
            Scaffold(
            appBar: AppBar(),
            body: widthScreen > 700 ? _bodyView(smp, context) : SafeArea(
            child: 
                _bodyView(smp, context)),
                  );
            },),
        );
    }
    
    _bodyView(smp, context) {
        return
        smp.loadding == true ? nullBodyView() : Container(child: Text('nn'),);
        }
    }



    abo
    var box = await Hive.openBox<ZhangdanModel>('zhangdan');
    if(box==null||box.length==0){
      
    }else{
      
      for(var i =0;i<box.length;i++){
         var _uid = box.getAt(i)!.;
         var _uid = box.getAt(i)!.;
      }
    }

## 获取网络图片的 bytedata

    var response = await Dio()  
        .get(a['pic'], options: Options(responseType: ResponseType.bytes));
    bytepic  = response.data;

## 多重数组计算方法 （color + size的计算方法）

    int s = (i* sizeList.length)+y;

## model

    GetCaigouModel 2
    BuyInfo 3
    CaiGouDanModel 4
    UserModel  5
    OrderModel 6
    DianHuoModel 7
    FalistModel 8
    WentiModel 9
    ZhangdanModel 10
    
    CaigoudanTempModel 12
    CaiGouListModel 13
    TuiJianModel  14
    OrginModel 15
     FavModel17
    colorModel  16
    leiModel  18
    SizeModel  19
    ShangModel 20
    ShangChengModel 21
    SouCangModel 22
    BuhuoModel 23
    DanjuModel 24
    orderDayModel 25

## url

    var url = UrlList.mainServer.url() +
        'Mainpage/checkStartJin?zid=' +
        uid! +
        '&maxoid=' +

## Container 边框 + 圆角

    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border(
                bottom: BorderSide(
                width: 1,
                color: Colors.white
            )
        )
    ),

## 发送消息列队

        final chatService = ChatService();
      var _dd = {
        'avatar': 'https://example.com/avatar.png',
        'time': DateTime.now().toString().substring(0, 19),
        'text': _inputC.text,
        'isMe': true,
        'pic': ''
      };
      _messages.add(_dd);
      _inputC.text = '';
      var gg = await chatService.sendMessage(_dd);
      print(gg);

# textfiled 隐藏下划线

    TextField(
        decoration: InputDecoration(
        border: InputBorder.none,
        ),
    )

## app 桌面角标设置

    FlutterAppBadger.updateBadgeCount(10);

## app 顶部标题栏显示设置

    main页面添加
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent));

# 关闭返回

    Navigator.pushAndRemoveUntil(
    context,
    new MaterialPageRoute(builder: (context) => ReginPage()),
    (route) => route == null,
    );

# provider 用法

    _itemView(aa,context) {
         return ChangeNotifierProvider(
                create: (_) => daibanProvider(),
                child:
                        Builder(builder: (context){
                            daibanProvider smp = Provider.of<daibanProvider>(context);
                            return  _itemProviderView(aa,context,smp);
                        },)
    
         );
    }
        bool _sisposed = false;
        @override
        notifyListeners() {
            if (!_sisposed) {
            super.notifyListeners();
            }
        }
        @override
        dispose() {
            _sisposed =true;
            getRigengData();
            getRigengList();
        }

        // 方法 2
        _itemView(aa,context) { return ChangeNotifierProvider.value(
        value: daibanProvider(), child:
        Builder(builder: (context){ daibanProvider smp = Provider.of<daibanProvider>(context); return  _
        itemProviderView(aa,context,smp); },)
        
                 );
            }

# ElevatedButton 设置颜色

        ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),),
        onPressed: () {},
        child: Text('gogo'))

# 延时

    Future.delayed(Duration(seconds: 2), () {
    get_data(t, context, 'input');
    });

## 添加启动图片后 执行命令

    flutter pub run flutter_native_splash:create

# card 圆角

    Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))
        ),
       child:Text('a')
      )

## 转场动画

    transition: Transition.circularReveal  right ->left
    
    transition: Transition.cupertino  中间居中，类似苹果转场

----------------------------------------------------------------

## 多语言调用方法

     await FlutterKeychain.put(key: "lang", value: "ko");

     changeLang.changeLanguage('ko','');

## pdf Stryle

      style: pw.Theme.of(context).paragraphStyle

## 网络图片转 bytes 的方法

    response = await Dio()
    .get(a['pic'], options: Options(responseType: ResponseType.bytes));

    var pic  = response.data

## 禁止滚动

      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

# 日期选择器

            showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020, 6),
                  lastDate: DateTime(2221, 6),
                  textDirection: TextDirection.ltr,
                  currentDate: DateTime.now(),
                  cancelText: "취소",
                  confirmText: "확인",
                  initialDatePickerMode: DatePickerMode.day,
                  useRootNavigator: true,
                  selectableDayPredicate: (dayTime) {
                    if (dayTime == DateTime(2020, 10, 15) ||
                        dayTime == DateTime(2020, 10, 16) ||
                        dayTime == DateTime(2020, 10, 17)) {
                      return false;
                    }
                    return true;
                  }).then((date) {
                   print('select data = ' +date.toString());
                   
              });

# 获取屏幕尺寸

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

# hive 使用

    参考 https://www.youtube.com/watch?v=EenYDsyFzYs

    dependencies:
        json_annotation: ^4.4.0
    
    dev_dependencies:
        json_serializable: ^6.1.4
        build_runner: ^2.1.7
        hive_generator: ^1.1.2

    生成方法  在 命令行 flutter pub run build_runner build

    final box = await Hive.openBox<Wordmodel>('word');

    int id = 0;
    if(box.isNotEmpty){
        final prevItem = box.getAt(box.length-1);
        
        if(prevItem !=null){
          id = prevItem +1;
        }
    }
    
    添加
    box.put(id,WordModel(id:id,engWord:engWord,korWord:korWord,CoreeectConnt:0));

## json 转换命令

    flutter packages pub run build_runner build --delete-conflicting-outputs
     
    调用方法  ValueListenableBuilder 可以实时反映数据变化，不用另外使用 provider 或者 setstate

    1  ValueNotifier<List> _valueNotifier = ValueNotifier<List>(searedData);
    2 _body() {
        return ValueListenableBuilder(
            valueListenable: Hive.box<WordModel>('word').listenable(),
            builder: (context, Box<WordModel> box, child) {
            return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, i) {
            var aa = box.getAt(i); // 等同于 aa = list[i];
            
                            return _itemView(aa);
                          });
                    });
            }
            
        _itemView(aa) {
            return Container(
            child: Text(aa.toString()),
            );
        }
    }

    QueRen(context, widget) {
    return ChangeNotifierProvider<GetCaigouProvider>(
            create: (_) => GetCaigouProvider(),
            child: Builder(builder: (context) {
            GetCaigouProvider smp =    CaigouProvider smp =Provider.of<CaigouProvider>(context);
                return Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                child: Text(S().start_buy),
                onPressed: () async {
            if (_jin == null || _jin == '') {
            showToastView(S().caigou_input_start_jin, context);
            return;
            }
    
                    await gotuCaigou(context, widget);
                  },
                ),
              );
            }));
    }

    box.put(key,'value');

# 随机数 Random().nextInt(10)；

# 数据持久化 FlutterKeychain

    Get value
    var lang = await FlutterKeychain.get(key: "lang");

    Put value
    await FlutterKeychain.put(key: "key", value: "value");

    Remove item
    await FlutterKeyChain.remove(key: "key");

    Clear the secure store
    await FlutterKeyChain.clear();

# 弹窗使用方法

    selectLei(context,bb) {
    showDialog<Null>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
    return ChangeNotifierProvider(
    create: (_) => DianhuoProvider(context),
    child: Builder(builder: (context) {
    DianhuoProvider smp = Provider.of<DianhuoProvider>(context);
    return AlertDialog(
    title: Text('请选分类'),
    content: SingleChildScrollView(
    child: ListBody(
    children: <Widget>[
    couryListView(smp,context,bb)
    ],
    ),
    ),
    actions: <Widget>[
    Container(
    
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CanelView(context),
                        QueRen(context, smp),
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

# text 隐藏超出部分

    Text(titleT,overflow: TextOverflow.ellipsis,),

## input

    numInputView(aa,bb, smp, context, s) {
        return Container(
            decoration: BoxDecoration(
            border: Border.all(width: 0.5,color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(vertical: 3),
            margin: EdgeInsets.symmetric(vertical: 3),
            child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (t){
                    smp.setInput(s,t,aa,bb);
                    },
                    controller: smp.numCont[s],
                    decoration: InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    ),
                 ),
        );
    }

# GridView.builder

    GriderV(listData) {
    return
        GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 267,
        mainAxisSpacing: 5,
        crossAxisSpacing: 10),
        
              itemCount: listData.length,
              itemBuilder: ((context, i) {
                var aa = feedBackList[i];
                return
        
                  ElevatedButton(onPressed: () {
                    Get.dialog(
                      Dialog(
                          child: tanchuang(aa,context)
                      ),
                    );
                  }, child:
        
                  Container(
                    //padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(4)),
                          border: Border.all(
                              color: const Color(0xff999999),
                              width: 1.5
                          )
                      ),
                      child: GridTile(
        
                        header: _headView(aa),
                        footer: Opacity(
                            opacity: 0.7,
                            child:
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(aa['neirong'] ?? ''))),
                        child:
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Image.network(aa['pic']),),
        
        
                      )
                  ));
              }));
    }

## macos 不能联网的设置

        // macos/runner 
         DebugProfile.entitlements
         Release.entitlements

     做如下修改
    <dict>
        <key>com.apple.security.app-sandbox</key>
        <true/>
        <key>com.apple.security.cs.allow-jit</key>
        <true/>
        <key>com.apple.security.network.server</key>
        <true/>
        <key>com.apple.security.network.client</key>
        <true/>
    </dict>

## 图片数据为空

        Image.network(aa,
            errorBuilder: (BuildContext context, Object exception,
            StackTrace? stackTrace) {
            return const Text('😢');
            },
        ),

## 时间加减

        var _today = DateTime.now();
        var _span = Duration(days: 1);
        var _nextDay =_today.add(_span);  // 加一天
        
        var now = DateTime.now();
        var span = Duration(days: 1);
        print(now);
        print(now.subtract(span));   // 减一天

## provider 标准配置

        bool _loading = false;
        bool get loading => _loading;
        bool _sisposed = false;
        
        @override
        notifyListeners() {
                if (!_sisposed) {
                super.notifyListeners();
                }
        }
        
        @override
        void dispose(){
                super.dispose();
                _sisposed = true;
        }

        setLoading(t) {
        _loadding = t;
        notifyListeners();
        }

## 返回上 上 及 页面

         Navigator.of(context)..pop()..pop()..pop();

## minio 上传

    final minio = Minio(
    endPoint: 'minio.ksoft.link',
    accessKey: 'minio',
    secretKey: 'miniosecret',
    useSSL: false,
    port: 80
    );


    uploadImage_minio(u, context) async {
        var tt2 = DateTime.now()
        .toString()
        .replaceAll(':', '_')
        .substring(0, 23)
        .replaceAll(' ', '')
        .replaceAll('-', '')
        .replaceAll('.', '_');
        
        String name = u.path.toString().split('/').last;
        String type = name.split('.').last;
        var picName = tt2 + '.' + type;
        final bucket = 'order';
        final now = DateTime.now();
        final year = now.year.toString();
        final month = now.month.toString().padLeft(2, '0');
        final day = now.day.toString().padLeft(2, '0');
        final objectName = '$cpname/$year/$month/$day/$picName';
        
        final file = File(u.path);
        // try{
        var pic = await minio.putObject(
        bucket,
        objectName,
        Stream.value(await file.readAsBytes()),
        onProgress: (bytes) => print('$bytes uploaded'),
        );
        print('ppc = http://minio.apmwuliu.com/$bucket/'+objectName);
        
        var picc = '$uploadServer/$bucket/'+objectName;
        return picc;
    
    }