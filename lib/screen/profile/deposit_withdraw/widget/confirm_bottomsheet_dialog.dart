import 'package:flutter/material.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

class ConfirmBottomSheetDialog extends StatelessWidget {
  const ConfirmBottomSheetDialog({
    super.key,
  });

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
                'Xác nhận thông tin nạp tiền',
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
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Công ty cổ phần ĐTTM và dịch vụ BĐS Rencity',
                  style: TextStyle(
                    color: AppColor.dark1,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 28,
                width: 91,
                decoration: BoxDecoration(
                  color: AppColor.light1,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.copy,
                      color: AppColor.dark6,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Sao chép',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColor.dark5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            'Số tài khoản 034000304444',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'NGAN HANG TMCP QUAN DOI (MB)',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Nội dung',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Nạp tiền tài khoản 0396654452',
                  style: TextStyle(
                    color: AppColor.dark1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 28,
                width: 91,
                decoration: BoxDecoration(
                  color: AppColor.light1,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.copy,
                      color: AppColor.dark6,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Sao chép',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColor.dark5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Mã tài khoản',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            '0396654452',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Số tiền nạp',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            '1.000.000',
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Mã giao dịch',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'F12949FJFKFNYY',
            style: TextStyle(
              color: AppColor.dark1,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
            title: 'Thanh toán',
            radius: 4,
            height: 48,
            bgColor: AppColor.primaryColor,
            onTap: () {},
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}