
import 'package:chat_user/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

chatVoiceView(smp,context){
  bool _isRecording = smp.isRecording;
  bool _isCanceling = smp.isCanceling;
  return
    GestureDetector(
      onVerticalDragUpdate: (details) {
        // 当用户垂直滑动时，检查他们是否滑动足够的距离来取消录音
        if (details.delta.dy < -50) {  // 例如，滑动超过50像素

          smp.setCanceling(true);
        } else {
          smp.setCanceling(false);
        }
      },
      onVerticalDragEnd: (details) {
        // 当用户结束滑动时，检查是否应该取消录音
        if (_isCanceling) {
          // 停止并取消录音
        }
        smp.setCanceling(false);
        smp.setRecording(false);

      },
      onLongPressStart: (_) {
        // 当用户长按时，开始录音

        smp.setRecording(true);
        // 开始录音的代码...
      },
      onLongPressEnd: (_) {
        // 当用户释放长按时，结束录音
        if (!_isCanceling) {
          // 停止并保存录音
        }
        smp.setCanceling(false);
        smp.setRecording(false);
      },
      child: Container(
        height: 50,
        width: 100,
        color: _isRecording ? Colors.red : Colors.blue,
        child: Center(
          child: Text(
            _isRecording
                ? (_isCanceling ? S().quxiao_push : '正在录音')
                : S().chat_voice,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

}