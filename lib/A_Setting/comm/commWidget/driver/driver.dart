
import 'dart:io';
import 'package:chat_user/A_Setting/server.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:chat_user/A_Setting/model.dart';

Map<String, dynamic> returnData = <String, dynamic>{};
String os = ''; // 系统
String OsVer = ''; // 系统版本
String model = ''; // 型号
String brand = ''; // 品牌
String money = ''; // 内存
String cpu = ''; // cpu
String uuid = ''; // 机器码
String makeData = ''; // 出厂日期

get_info() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    AndroidDeviceInfo returnData = await deviceInfoPlugin.androidInfo;

    os = 'android';
    OsVer = returnData.version.sdkInt.toString() +
        '.' +
        returnData.version.release.toString();
    model = returnData.model.toString();
    makeData = returnData.version.securityPatch.toString();
    brand = returnData.brand.toString();
    cpu = returnData.hardware.toString();
    uuid = returnData.bootloader.toString();
  } else {
    if (Platform.isIOS) {
      IosDeviceInfo returnData = await deviceInfoPlugin.iosInfo;

      os = 'ios';
      OsVer = returnData.systemVersion.toString() +
          '-' +
          returnData.utsname.version.toString();
      model = returnData.name.toString();
      makeData = returnData.systemName.toString();
      brand = returnData.utsname.sysname.toString() +
          '-' +
          returnData.utsname.nodename.toString();
      cpu = returnData.utsname.machine.toString();
      uuid = returnData.identifierForVendor.toString();
    } else {
      if (Platform.isMacOS) {
        MacOsDeviceInfo returnData = await deviceInfoPlugin.macOsInfo;

        os = 'macos';
        OsVer = returnData.osRelease.toString();
        model = returnData.model.toString();
        makeData = returnData.arch.toString();
        brand = returnData.computerName.toString();
        cpu = returnData.activeCPUs.toString();
        uuid = returnData.systemGUID.toString();
        money = returnData.memorySize.toString();
      } else {
        WindowsDeviceInfo returnData = await deviceInfoPlugin.windowsInfo;
        os = 'windows';
        model = returnData.computerName.toString();
        brand = returnData.computerName.toString();
        cpu = returnData.numberOfCores.toString();
        money = returnData.systemMemoryInMegabytes.toString();
      }
    }
  }
  var tt = DateTime.now().toString().substring(0, 19);

  var info = 'uid=' +
      uid +
      '&os=' +
      os +
      '&osver=' +
      OsVer.toString() +
      '&model=' +
      model +
      '&brand=' +
      brand +
      '&money=' +
      money +
      '&cpu=' +
      cpu +
      '&uuid=' +
      uuid +
      '&tt=' +
      tt;

  await saveDevice(info);
}

saveDevice(info) async {
  var uu = mainServer + 'Savedev/Savedev?' + info;

  Dio dio = Dio();

  await dio.get(uu).then((value) {

  });
}

Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
  return <String, dynamic>{
    'version.securityPatch': build.version.securityPatch,
    'version.sdkInt': build.version.sdkInt,
    'version.release': build.version.release,
    'version.previewSdkInt': build.version.previewSdkInt,
    'version.incremental': build.version.incremental,
    'version.codename': build.version.codename,
    'version.baseOS': build.version.baseOS,
    'board': build.board,
    'bootloader': build.bootloader,
    'brand': build.brand,
    'device': build.device,
    'display': build.display,
    'fingerprint': build.fingerprint,
    'hardware': build.hardware,
    'host': build.host,
    'id': build.id,
    'manufacturer': build.manufacturer,
    'model': build.model,
    'product': build.product,
    'supported32BitAbis': build.supported32BitAbis,
    'supported64BitAbis': build.supported64BitAbis,
    'supportedAbis': build.supportedAbis,
    'tags': build.tags,
    'type': build.type,
    'isPhysicalDevice': build.isPhysicalDevice,
    'androidId': build.id,
    'systemFeatures': build.systemFeatures,
  };
}

Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
  return <String, dynamic>{
    'name': data.name,
    'systemName': data.systemName,
    'systemVersion': data.systemVersion,
    'model': data.model,
    'localizedModel': data.localizedModel,
    'identifierForVendor': data.identifierForVendor,
    'isPhysicalDevice': data.isPhysicalDevice,
    'utsname.sysname:': data.utsname.sysname,
    'utsname.nodename:': data.utsname.nodename,
    'utsname.release:': data.utsname.release,
    'utsname.version:': data.utsname.version,
    'utsname.machine:': data.utsname.machine,
  };
}

Map<String, dynamic> _readLinuxDeviceInfo(LinuxDeviceInfo data) {
  return <String, dynamic>{
    'name': data.name,
    'version': data.version,
    'id': data.id,
    'idLike': data.idLike,
    'versionCodename': data.versionCodename,
    'versionId': data.versionId,
    'prettyName': data.prettyName,
    'buildId': data.buildId,
    'variant': data.variant,
    'variantId': data.variantId,
    'machineId': data.machineId,
  };
}

Map<String, dynamic> _readWebBrowserInfo(WebBrowserInfo data) {
  return <String, dynamic>{
    'browserName': describeEnum(data.browserName),
    'appCodeName': data.appCodeName,
    'appName': data.appName,
    'appVersion': data.appVersion,
    'deviceMemory': data.deviceMemory,
    'language': data.language,
    'languages': data.languages,
    'platform': data.platform,
    'product': data.product,
    'productSub': data.productSub,
    'userAgent': data.userAgent,
    'vendor': data.vendor,
    'vendorSub': data.vendorSub,
    'hardwareConcurrency': data.hardwareConcurrency,
    'maxTouchPoints': data.maxTouchPoints,
  };
}

Map<String, dynamic> _readMacOsDeviceInfo(MacOsDeviceInfo data) {
  return <String, dynamic>{
    'computerName': data.computerName,
    'hostName': data.hostName,
    'arch': data.arch,
    'model': data.model,
    'kernelVersion': data.kernelVersion,
    'osRelease': data.osRelease,
    'activeCPUs': data.activeCPUs,
    'memorySize': data.memorySize,
    'cpuFrequency': data.cpuFrequency,
    'systemGUID': data.systemGUID,
  };
}

Map<String, dynamic> _readWindowsDeviceInfo(WindowsDeviceInfo data) {
  return <String, dynamic>{
    'numberOfCores': data.numberOfCores,
    'computerName': data.computerName,
    'systemMemoryInMegabytes': data.systemMemoryInMegabytes,
  };
}
