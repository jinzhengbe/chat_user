
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> checkPermissions(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool hasRequested = prefs.getBool('permissions_requested') ?? false;

  if (!hasRequested) {
    PermissionStatus photosStatus = await Permission.photos.status;
    PermissionStatus cameraStatus = await Permission.camera.status;
    PermissionStatus storageStatus = await Permission.storage.status;

    if (photosStatus.isDenied || cameraStatus.isDenied || storageStatus.isDenied) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder( // 添加这一行
            borderRadius: BorderRadius.circular(20), // 设置圆角半径
          ),
          title: Text('请求权限'),
          content: Text('我们需要相册、相机和本地存储权限以正常运行程序。'),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                Map<Permission, PermissionStatus> statuses = await [
                  Permission.photos,
                  Permission.camera,
                  Permission.storage,
                ].request();

                await prefs.setBool('permissions_requested', true);
              },
              child: Text('确定'),
            ),
          ],
        ),
      );

    } else {
      await prefs.setBool('permissions_requested', true);
    }
  }
}
