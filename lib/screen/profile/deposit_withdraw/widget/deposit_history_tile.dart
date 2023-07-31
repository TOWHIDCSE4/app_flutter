import 'package:flutter/material.dart';

import 'history_card_tile.dart';

class DepositHistoryTile extends StatelessWidget {
  const DepositHistoryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return const HistoryCardTile(
          amount: '+ 3.500.000',
          from: 'Từ: 0965305452',
          content: 'ND: Nạp tiền tài khoản ',
          subContent: '0965305452',
          dateTime: '18:36   05/07/2023',
        );
      },
    );
  }
}
