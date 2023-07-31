import 'package:flutter/material.dart';
import 'package:gohomy/const/color.dart';

import 'history_card_tile.dart';

class WithdrawHistoryTile extends StatelessWidget {
  const WithdrawHistoryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return const HistoryCardTile(
          amount: '- 3.500.000',
          amountColor: AppColor.red,
          from: 'Từ: Rencity',
          content: 'ND: Rút tiền',
          dateTime: '18:36 05/07/2023',
        );
      },
    );
  }
}