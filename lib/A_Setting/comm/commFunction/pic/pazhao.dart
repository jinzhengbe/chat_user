import 'package:image_picker/image_picker.dart';
import 'package:chat_user/A_Setting/comm/commFunction/pic/upload.dart';

import '../../../model.dart';

paizhao(context) async {
  try {
    final ImagePicker _picker = ImagePicker();
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      // Do something with the photo file, such as displaying it in an Image widget
      pic = await uploadImage(photo, context); //一般上传
      return pic;
    } else {
      return '';
    }
  } on Exception catch (e) {
    
    return;
  }
}
