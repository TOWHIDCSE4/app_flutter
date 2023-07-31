import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/deposit_entry_page.dart';

import 'widget/banner_tile.dart';
import 'widget/tabbar_tile.dart';
import 'widget/transaction_entry_navigation_tile.dart';

class DepositWithdrawPage extends StatelessWidget {
  const DepositWithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.27,
            child: Column(
              children: [
                const BannerTile(),
                TransactionEntryNavigationTile(
                  onTapDeposit: () => Get.to(const DepositEntryPage()),
                  onTapWithdraw: () {},
                ),
                const SizedBox(height: 16),
                const TabbarTile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}