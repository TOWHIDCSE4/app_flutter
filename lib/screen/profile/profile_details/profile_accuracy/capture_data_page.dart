import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/profile_details/controller/registration_controller.dart';

import '../../../../components/arlert/saha_alert.dart';
import '../widget/body_text_tile.dart';
import '../widget/custom_button.dart';
import 'fill_profile_accuracy_page.dart';

class CaptureDataPage extends StatelessWidget {
  const CaptureDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
     RegistrationController registrationController = Get.put(RegistrationController());
     bool isPeopleId = registrationController.idType.value == IdCardType.peopleID;
     registrationController.getAllValuesForRegistration();
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
                      children: [
                        const Text(
                          'Hồ sơ',
                          style: TextStyle(
                            color: AppColor.dark1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        BodyTextTile(
                          title: 'Họ tên',
                          data: registrationController.name.value,
                        ),
                        BodyTextTile(
                          title: 'Ngày sinh',
                          data: registrationController.dateOfBirth.value,
                        ),
                        BodyTextTile(
                          title: 'Số CMND/CCCD',
                          data: registrationController.idNumber.value,
                        ),
                        BodyTextTile(
                          title: 'Ngày cấp',
                          data: registrationController.createdDate.value,
                        ),
                        BodyTextTile(
                          title: 'Nơi cấp',
                          data: registrationController.createdLocation.value,
                        ),
                        isPeopleId ? const SizedBox.shrink() : BodyTextTile(
                          title: 'Giới tính',
                          data: registrationController.sex.value,
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
                  onTap: () {
                    if (registrationController.name.value.toLowerCase().contains('not found') ||
                    registrationController.dateOfBirth.value.toLowerCase().contains('not found')||
                    registrationController.idNumber.value.toLowerCase().contains('not found')||
                    registrationController.createdDate.value.toLowerCase().contains('not found')||
                    registrationController.createdLocation.value.toLowerCase().contains('not found')) {
                      SahaAlert.showError(message: 'Thẻ id của bạn không chính xác. Vui lòng chụp lại hình ảnh của bạn.');
                    } else {
                      Get.to(const FillProfileAccuracyPage());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}