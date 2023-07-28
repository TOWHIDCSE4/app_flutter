import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/profile_details/profile_details_page.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

import 'success_profile_page.dart';
import 'widgets/custom_textfiield.dart';
import 'widgets/text_field_title.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jobController = TextEditingController();
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
          'Chỉnh sửa thông tin cá nhân',
          style: TextStyle(color: Color(0xFF1A1A1A)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextFieldTextTitle(title: 'Địa chỉ'),
                CustomTextFiled(
                  textEditingController: addressController,
                  hintText: '00/00/00',
                ),
                const TextFieldTextTitle(title: 'Số điện thoại'),
                CustomTextFiled(
                  textEditingController: phoneController,
                  hintText: '0123456789',
                  backgroungColor: AppColor.light2,
                ),
                const TextFieldTextTitle(title: 'Email'),
                CustomTextFiled(
                  textEditingController: emailController,
                  hintText: 'abc@gmail.com',
                ),
                const TextFieldTextTitle(title: 'Nghề nghiệp'),
                CustomTextFiled(
                  textEditingController: jobController,
                  hintText: 'Tự do',
                ),
                SizedBox(height: size.height * 0.25),
                CustomButton(
                  title: 'Xác thực',
                  bgColor: AppColor.primaryColor,
                  // width: size.width * 0.85,
                  onTap: () {
                    Get.to(ProfileDetailsPage(
                      dateOfBirth: '00/00/0000',
                      nid: '001199016666',
                      creationDay: '00/00/0000',
                      creationlocate: 'Công an TP. Hà Nội',
                      sex: 'Nam',
                      address: '01 ngõ Xã Đàn, Đống Đa, Hà Nội',
                      phone: '0123456789',
                      email: 'abcdef@gmail.com',
                      job: 'Tự do',
                      isEnabled: true,
                      onTapContinue: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessProfilePage(),
                          ),
                        );
                      },
                    ));
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
