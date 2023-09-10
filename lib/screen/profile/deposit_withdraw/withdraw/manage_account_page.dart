import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/withdraw/widgets/custom_withdraw_appbar.dart';
import 'package:gohomy/screen/profile/profile_details/personal_information/widgets/custom_textfiield.dart';
import 'package:gohomy/screen/profile/profile_details/personal_information/widgets/text_field_title.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

import 'manage_account_otp_page.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/domain/banklist_model.dart';

class ManageAccountPage extends StatefulWidget {
  const ManageAccountPage({
    super.key,
    required this.bankInfo,
  });
  final BankList bankInfo;

  @override
  State<ManageAccountPage> createState() => _ManageAccountPageState();
}

class _ManageAccountPageState extends State<ManageAccountPage> {
  late TextEditingController bankNameController;
  late TextEditingController accountNumberController;
  late TextEditingController accountHolderController;

  @override
  void initState() {
    bankNameController = TextEditingController(text: widget.bankInfo.bankFullName);
    accountNumberController = TextEditingController(text: widget.bankInfo.bankCode);
    accountHolderController = TextEditingController(text: widget.bankInfo.bankShortName);
    super.initState();
  }
  @override
  void dispose() {
    bankNameController.dispose();
    accountNumberController.dispose();
    accountHolderController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const CustomWithdrawAppBar(
        title: 'Quản lý tài khoản nhận tiền',
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextFieldTextTitle(title: 'Ngân hàng'),
                CustomTextFiled(
                  textEditingController: bankNameController,
                  hintText: 'ACB - Ngân hàng TMCP Á Châu',
                  backgroungColor: AppColor.light2,
                ),
                const TextFieldTextTitle(title: 'Số tài khoản'),
                CustomTextFiled(
                  textEditingController: accountNumberController,
                  hintText: '123456789',
                  keyboardType: TextInputType.number,
                ),
                const TextFieldTextTitle(title: 'Chủ tài khoản'),
                CustomTextFiled(
                  textEditingController: accountHolderController,
                  hintText: 'Nguyễn Thế Kiên',
                ),
                SizedBox(height: size.height * 0.25),
                CustomButton(
                  title: 'Tiếp tục',
                  bgColor: AppColor.primaryColor,
                  // width: size.width * 0.85,
                  onTap: () {
                    Get.to(const ManageAccountOTPPage());
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
