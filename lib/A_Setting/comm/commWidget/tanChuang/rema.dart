

import 'package:flutter/material.dart';

class RenameDialog extends AlertDialog {
  RenameDialog({ contentWidget})
      : super(
    content: contentWidget,
    contentPadding:  EdgeInsets.zero,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.black, width: 1)),
  );
}
