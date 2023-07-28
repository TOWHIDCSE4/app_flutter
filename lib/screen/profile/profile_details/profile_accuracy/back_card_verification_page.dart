import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

import 'capture_image_page.dart';
import 'widgets/card_verification_tile.dart';

class BackCardVerificationPage extends StatelessWidget {
  const BackCardVerificationPage({super.key});

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
        title: "mặt sau CMND/CCCD",
        instruction: "Xin đưa mặt sau của CMND/CCCD vào khung hình, hệ thống sẽ chụp tự động",
        imgPath: ImageAssets.imgBackCard,
        onTapContinue: () => Get.to(const CaptureImagePage()),
      ),
    );
  }
}