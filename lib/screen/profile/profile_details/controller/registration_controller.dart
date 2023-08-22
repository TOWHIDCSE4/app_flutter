import 'package:get/get.dart';

import '../repository/image_repository.dart';

class RegistrationController extends GetxController {
  var scannedFrontCardText = ''.obs;
  var scannedBackCardText = ''.obs;
  var idType = IdCardType.peopleID.obs;
  ImageRepository imageRepository = ImageRepository.instance;

  RegistrationController();

  String scrapeDataFromRecognisedText({
    required String start,
    required String end,
    IdCardSide idCardSide = IdCardSide.front,
  }) {
    String data = '';
    String result = imageRepository.filterIdCardText(
      ocrText: idCardSide == IdCardSide.front
          ? scannedFrontCardText.value
          : scannedBackCardText.value,
      start: start,
      end: end,
    );
    data = result;
    return data;
  }
}

enum IdCardType {
  peopleID,
  citizenId,
}

enum IdCardSide {
  front,
  back,
}
