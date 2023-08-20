import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageRepository {
  ImageRepository._();
  static ImageRepository instance = ImageRepository._();

  final TextRecognizer _textRecognizer = TextRecognizer();

  //*************************** Translate Language ****************************/
  Future<String> convertImageToText({
    required String? imagePath,
  }) async {
    final inputImage = InputImage.fromFilePath(imagePath!);
    final RecognizedText recognizedText =
        await _textRecognizer.processImage(inputImage);
    String scannedText = '';
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = '$scannedText${line.text.replaceAll('\n', '')}\n';
      }
      // String blockText = block.text.replaceAll('\n', ' ');
      // scannedText = '$scannedText$blockText';
    }
    return scannedText;
  }

  //******************************* Crop Image ********************************/
  ///Crop Image Picked From Camera or Gallery
  Future<CroppedFile?> cropImage(XFile? imageFile) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    return croppedFile;
  }
}
