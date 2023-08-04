import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/image_assets.dart';
import 'package:image_picker/image_picker.dart';

import 'bottomsheet_widget.dart';

class ImagePickerTile extends StatelessWidget {
  const ImagePickerTile({
    super.key,
    required this.onSelectImage,
  });

  final Function(String?) onSelectImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
          ),
          builder: (context) {
            return BottomSheetWidget(
              onPickCamera: () => _openImagePicker(source: ImageSource.camera),
              onPickGallery: () => _openImagePicker(source: ImageSource.gallery),
            );
          },
        );
      },
      child: SvgPicture.asset(
        ImageAssets.profileCamera,
        height: 60,
        width: 60,
      ),
    );
  }
  ///open Image From Camera or Gallery
  Future<void> _openImagePicker({
    required ImageSource source,
  }) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source,
    );
    onSelectImage(pickedFile?.path);
    Get.back();
  }
}
