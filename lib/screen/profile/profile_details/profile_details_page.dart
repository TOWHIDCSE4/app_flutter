import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

import 'profile_accuracy/profile_accuracy_page.dart';
import 'widget/body_text_tile.dart';
import 'widget/bottomsheet_widget.dart';
import 'widget/custom_button.dart';
import 'widget/header_text_tile.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({
    super.key,
    this.profileTitle,
    this.dateOfBirthTitle,
    this.dateOfBirth,
    this.nidTitle,
    this.nid,
    this.creationDayTitle,
    this.creationDay,
    this.creationlocateTitle,
    this.creationlocate,
    this.sexTitle,
    this.sex,
    this.personalInformationTitle,
    this.addressTitle,
    this.address,
    this.phoneTitle,
    this.phone,
    this.email,
    this.jobTitle,
    this.job,
    this.isEnabled = false,
    this.btnText,
    this.onTapContinue,
  });

  final String? profileTitle;
  final String? dateOfBirthTitle;
  final String? dateOfBirth;
  final String? nidTitle;
  final String? nid;
  final String? creationDayTitle;
  final String? creationDay;
  final String? creationlocateTitle;
  final String? creationlocate;
  final String? sexTitle;
  final String? sex;
  final String? personalInformationTitle;
  final String? addressTitle;
  final String? address;
  final String? phoneTitle;
  final String? phone;
  final String? email;
  final String? jobTitle;
  final String? job;
  final bool isEnabled;
  final String? btnText;
  final VoidCallback? onTapContinue;

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
                GestureDetector(
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
                          onPickCamera: () {},
                          onPickGallery: () {},
                        );
                      },
                    );
                  },
                  child: SvgPicture.asset(
                    ImageAssets.profileCamera,
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ngô Thị Khánh Chi',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(ImageAssets.editIcon)
                  ],
                ),
                const SizedBox(height: 16),
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
                          title: profileTitle ?? 'Hồ sơ',
                          subTitle: 'Xác thực',
                          isVisibleButton: !isEnabled,
                          onTap: () => Get.to(const ProfileAccuracyPage()),
                        ),
                        BodyTextTile(
                          title: dateOfBirthTitle ?? 'Ngày sinh',
                          data: dateOfBirth,
                        ),
                        BodyTextTile(
                          title: nidTitle ?? 'Số CMND/CCCD',
                          data: nid,
                        ),
                        BodyTextTile(
                          title: creationDayTitle ?? 'Ngày cấp',
                          data: creationDay,
                        ),
                        BodyTextTile(
                          title: creationlocateTitle ?? 'Nơi cấp',
                          data: creationlocate,
                        ),
                        BodyTextTile(
                          title: 'Giới tính',
                          data: sexTitle ?? sex,
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
                          title: personalInformationTitle ?? 'Thông tin cá nhân',
                          subTitle: 'Chỉnh sửa',
                          isVisibleButton: !isEnabled,
                          onTap: () {},
                        ),
                        BodyTextTile(
                          title: addressTitle ?? 'Địa chỉ',
                          data: address,
                        ),
                        BodyTextTile(
                          title: phoneTitle ?? 'Số điện thoại',
                          data: phone,
                        ),
                        BodyTextTile(
                          title: 'Email',
                          data: email,
                        ),
                        BodyTextTile(
                          title: jobTitle ?? 'Nghề nghiệp',
                          data: job,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  title: btnText ?? 'Kích hoạt ví Renren',
                  bgColor: isEnabled ? AppColor.primaryColor : AppColor.diabled,
                  width: size.width * 0.85,
                  onTap: isEnabled ? onTapContinue! : () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
