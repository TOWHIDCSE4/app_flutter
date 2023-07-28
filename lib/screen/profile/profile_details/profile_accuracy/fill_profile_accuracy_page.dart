import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

import '../personal_information/personal_information_page.dart';
import '../widget/body_text_tile.dart';
import '../widget/custom_button.dart';
import '../widget/header_text_tile.dart';

class FillProfileAccuracyPage extends StatelessWidget {
  const FillProfileAccuracyPage({super.key});

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
          'Hồ sơ cá nhân',
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
                SvgPicture.asset(
                  ImageAssets.profileCamera,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ngô Thị Khánh Chi',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                    child: Column(
                      children: [
                        HeadingTextTile(
                          title: 'Thông tin cá nhân',
                          subTitle: 'Chỉnh sửa',
                          onTap: () => Get.to(const PersonalInformationPage()),
                        ),
                        const BodyTextTile(
                          title: 'Địa chỉ',
                        ),
                        const BodyTextTile(
                          title: 'Số điện thoại',
                        ),
                        const BodyTextTile(
                          title: 'Email',
                        ),
                        const BodyTextTile(
                          title: 'Nghề nghiệp',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  title: 'Kích hoạt ví Renren',
                  bgColor: const Color(0xFFC7C7C7),
                  width: size.width * 0.85,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
