import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/widget/custom_entry_textfield.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/widget/tranaction_type.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/withdraw/choose_choose_page.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/withdraw/widgets/custom_withdraw_appbar.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

class WithdrawEntryPage extends StatefulWidget {
  const WithdrawEntryPage({super.key});

  @override
  State<WithdrawEntryPage> createState() => _WithdrawEntryPageState();
}

class _WithdrawEntryPageState extends State<WithdrawEntryPage> {
  bool isOtpVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomWithdrawAppBar(title: 'Xác thực'),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Mã xác thực của bạn đã được gửi tới số \nđiện thoại (+84) 912 345 678',
                      style: TextStyle(
                        color: AppColor.dark3,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      'Vui lòng nhập mã xác thực',
                      style: TextStyle(
                        color: AppColor.dark4,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const  [
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                      Expanded(child: OTPDigitTextFieldBox(first: true, last: false)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: MediaQuery.of(context).viewInsets.vertical > 0
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(
                  title: 'Tiếp tục',
                  radius: 4,
                  height: 48,
                  bgColor: isOtpVerified ? AppColor.primaryColor : AppColor.light3,
                  onTap: () {},
                ),
              )
            : null,
      ),
    );
  }
}

class OTPDigitTextFieldBox extends StatelessWidget {
  final bool first;
  final bool last;
  const OTPDigitTextFieldBox(
      {super.key, required this.first, required this.last});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.all(0),
            counter: const Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
                width: 3.5,
                color: AppColor.light3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
                width: 3.5,
                color: AppColor.light3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "",
          ),
        ),
      ),
    );
  }
}
