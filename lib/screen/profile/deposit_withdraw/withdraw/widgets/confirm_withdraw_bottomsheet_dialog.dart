import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

import '../../domain/withdraw_history_model.dart';
import '../withdraw_otp_page.dart';
import 'withdraw_text_tile.dart';

class ConfirmWithdrawBottomSheetDialog extends StatelessWidget {
  const ConfirmWithdrawBottomSheetDialog({
    super.key,
    required this.withdrawInfo,
  });

  final Withdraw withdrawInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                color: AppColor.dark0,
                borderRadius: BorderRadius.circular(112),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                'Xác nhận thông tin rút tiền',
                style: TextStyle(
                  color: AppColor.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const Text(
            'Tài khoản người nhận',
            style: TextStyle(
              color: AppColor.dark4,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            withdrawInfo.bankAccountHolderName,
            style: const TextStyle(
              color: AppColor.dark1,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Số tài khoản ${withdrawInfo.accountNumber}',
            style: const TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'Ngân hàng TMCP Ngoại thương Việt Nam (VCB)',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16),
          WithdrawTextTile(
            title: 'Nội dung',
            value: withdrawInfo.withdrawContent,
            valueFontSize: 14,
          ),
          WithdrawTextTile(
            title: 'Số tiền rút',
            value: '${withdrawInfo.withdrawMoney} VNĐ',
            valueFontSize: 14,
            valueColor: AppColor.primaryColor,
          ),
          const WithdrawTextTile(
            title: 'Phí giao dịch',
            value: '12.000 VNĐ',
            valueFontSize: 14,
          ),
          WithdrawTextTile(
            title: 'Mã giao dịch',
            value: withdrawInfo.withdrawTradingCode,
            valueFontSize: 14,
          ),
          CustomButton(
            title: 'Xác nhận',
            radius: 4,
            height: 48,
            bgColor: AppColor.primaryColor,
            onTap: () => Get.to(const WithdrawOTPEntryPage()),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}