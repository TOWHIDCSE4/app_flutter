import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

import 'capture_data_page.dart';
import 'widgets/card_verification_tile.dart';

class CaptureImagePage extends StatelessWidget {
  const CaptureImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        iconTheme: const IconThemeData(
          color: AppColor.dark5,
        ),
        elevation: 0,
        title: const Text(
          "Chụp ảnh xác minh",
          style: TextStyle(color: AppColor.dark5),
        ),
        centerTitle: true,
      ),
      body: CardVerificationTile(
        title: "xác minh khuôn mặt",
        instruction: "Xin đưa mặt của bạn vào trước khung hình!",
        imgPath: ImageAssets.imgCaptureImage,
        onTapContinue: () => Get.to(const CaptureDataPage()),
      ),
    );
  }
}