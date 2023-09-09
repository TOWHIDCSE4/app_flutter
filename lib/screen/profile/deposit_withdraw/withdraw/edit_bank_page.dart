import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/withdraw/widgets/custom_withdraw_appbar.dart';
import 'package:gohomy/screen/profile/profile_details/personal_information/widgets/custom_textfiield.dart';
import 'package:gohomy/screen/profile/profile_details/personal_information/widgets/text_field_title.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

import '../domain/withdraw_history_model.dart';

class EditBankPage extends StatefulWidget {
  const EditBankPage({
    super.key,
    required this.withdrawInfo,
  });

  final Withdraw withdrawInfo;

  @override
  State<EditBankPage> createState() => _EditBankPageState();
}

class _EditBankPageState extends State<EditBankPage> {
  late TextEditingController bankNameController;
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController accountHolderController = TextEditingController();

  @override
  void initState() {
    bankNameController = TextEditingController(text: widget.withdrawInfo.bankName);
    accountNumberController = TextEditingController(text: widget.withdrawInfo.accountNumber);
    accountHolderController = TextEditingController(text: widget.withdrawInfo.bankAccountHolderName);
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
        title: 'Chỉnh sửa thông tin ngân hàng',
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
                  hintText: 'Vietcombank - Ngân hàng TMCP Ngoại thương',
                  backgroungColor: AppColor.light2,
                ),
                const TextFieldTextTitle(title: 'Số tài khoản'),
                CustomTextFiled(
                  textEditingController: accountNumberController,
                  hintText: '10335665233',
                  keyboardType: TextInputType.number,
                ),
                const TextFieldTextTitle(title: 'Chủ tài khoản'),
                CustomTextFiled(
                  textEditingController: accountHolderController,
                  hintText: 'VŨ ANH TÙNG',
                ),
                SizedBox(height: size.height * 0.25),
                CustomButton(
                  title: 'Cập nhật',
                  bgColor: AppColor.primaryColor,
                  // width: size.width * 0.85,
                  onTap: () => Get.back(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
