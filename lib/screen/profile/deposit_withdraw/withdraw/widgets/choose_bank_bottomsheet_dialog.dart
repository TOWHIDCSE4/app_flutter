import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/components/loading/loading_widget.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/withdraw/manage_account_page.dart';

import '../../controller/withdraw_controller.dart';
import 'choose_bank_tile.dart';

class ChooseBankBottomSheetDialog extends StatelessWidget {
  const ChooseBankBottomSheetDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WithdrawController withdrawController = Get.put(WithdrawController());
    withdrawController.getBankList();
    return SizedBox(
      height: size.height * 0.8,
      child: Padding(
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
                  'Chọn tài khoản liên kết',
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Obx(
              () => withdrawController.isLoadingBankList.value
                  ? Center(
                      child: SahaLoadingWidget(),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: withdrawController.bankList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var bankInfo = withdrawController.bankList[index];
                          return ChooseBankTile(
                            imageUrl: ImageAssets.icBank1,
                            title: bankInfo.bankShortName,
                            subTitle: bankInfo.bankFullName,
                            onTap: () {
                              Get.to(ManageAccountPage(
                                bankInfo: bankInfo,
                              ));
                            },
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
