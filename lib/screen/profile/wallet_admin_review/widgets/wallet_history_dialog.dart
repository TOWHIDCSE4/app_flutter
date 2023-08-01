import 'package:flutter/material.dart';

class WalletHistoryDialog extends StatelessWidget {
  const WalletHistoryDialog({
    super.key,
    required this.amountStr,
    required this.recipientAccount,
    required this.nameOfBank,
    required this.accountOwner,
    required this.content,
    required this.creationTime,
    required this.paymentTime,
    this.isDeposit = true,
    this.completed = false,
  });

  final bool isDeposit;
  final bool completed;
  final String amountStr;
  final String recipientAccount;
  final String nameOfBank;
  final String accountOwner;
  final String content;
  final String creationTime;
  final String paymentTime;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text(
        'Thông tin rút tiền',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              amountStr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(isDeposit ? 0xFF009247 : 0xFFF73131),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Tài khoản nhận: ',
                      style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: recipientAccount,
                      style: const TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 15),
              if (!completed)
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEFF3F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    icon: const Icon(
                      Icons.copy,
                      color: Color(0xFF8B999E),
                    ),
                    label: const Text(
                      'Sao chép',
                      style: TextStyle(
                        color: Color(0xFF8B999E),
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
            ],
          ),
          Text(
            'Ngân hàng: $nameOfBank',
            style: const TextStyle(
              color: Color(0xFF3F3F3F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Chủ tài khoản: $accountOwner',
            style: const TextStyle(
              color: Color(0xFF3F3F3F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: [
              Text(
                'ND: $content',
                style: const TextStyle(
                  color: Color(0xFF3F3F3F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 15),
              if (!completed)
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEFF3F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    icon: const Icon(
                      Icons.copy,
                      color: Color(0xFF8B999E),
                    ),
                    label: const Text(
                      'Sao chép',
                      style: TextStyle(
                        color: Color(0xFF8B999E),
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Thời gian tạo lệnh rút: $creationTime',
            style: const TextStyle(
              color: Color(0xFF3F3F3F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          if (completed)
            Text(
              'Thời gian thanh toán: $paymentTime',
              style: const TextStyle(
                color: Color(0xFF3F3F3F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 10, top: 0),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Thanh toán',
            style: TextStyle(
              // fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
