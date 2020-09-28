import 'dart:io';

import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/services/MediaService.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {
  // ignore: non_constant_identifier_names
  PickedFile _SelectedImage;
  bool get hasSelectedImage => _SelectedImage != null;
  // ignore: non_constant_identifier_names
  File get SelectedImage => File(_SelectedImage.path);
  final _mediaService = locator<MediaService>();
  Future selectImage({@required bool fromGallery}) async {
     _SelectedImage =  await _mediaService.getImage(fromGallery);
  }
}
