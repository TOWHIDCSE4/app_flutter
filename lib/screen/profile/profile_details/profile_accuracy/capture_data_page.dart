import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

import '../widget/body_text_tile.dart';
import '../widget/custom_button.dart';
import '../widget/header_text_tile.dart';
import 'fill_profile_accuracy_page.dart';

class CaptureDataPage extends StatelessWidget {
  const CaptureDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: Get.back,
        ),
        title: const Text(
          'Cập nhật thông tin định danh',
          style: TextStyle(color: Color(0xFF1A1A1A)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hồ sơ',
                          style: TextStyle(
                            color: AppColor.dark1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        BodyTextTile(
                          title: 'Họ tên',
                          data: 'Ngô Thị Khánh Chi',
                        ),
                        BodyTextTile(
                          title: 'Ngày sinh',
                          data: '00/00/0000',
                        ),
                        BodyTextTile(
                          title: 'Số CMND/CCCD',
                          data: '001199016666',
                        ),
                        BodyTextTile(
                          title: 'Ngày cấp',
                          data: '00/00/0000',
                        ),
                        BodyTextTile(
                          title: 'Nơi cấp',
                          data: 'Công an TP. Hà Nội',
                        ),
                        BodyTextTile(
                          title: 'Giới tính',
                          data: 'Nam',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Thông tin cá nhân',
                          style: TextStyle(
                            color: AppColor.dark1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        BodyTextTile(
                          title: 'Địa chỉ',
                        ),
                        BodyTextTile(
                          title: 'Số điện thoại',
                        ),
                        BodyTextTile(
                          title: 'Email',
                        ),
                        BodyTextTile(
                          title: 'Nghề nghiệp',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.22),
                CustomButton(
                  title: 'Xác thực',
                  bgColor: AppColor.primaryColor,
                  width: size.width * 0.85,
                  onTap: () => Get.to(const FillProfileAccuracyPage()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
