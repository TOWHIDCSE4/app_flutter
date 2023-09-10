import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gohomy/data/remote/saha_service_manager.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/data/deposit_withdraw_repository.dart';

import '../../../../components/arlert/saha_alert.dart';
import '../domain/banklist_model.dart';
import '../domain/withdraw_history_model.dart';
import '../withdraw/manage_account_otp_success_page.dart';

class WithdrawController extends GetxController {
  var withdrawList = <Withdraw>[].obs;
  var bankList = <BankList>[].obs;
  var isLoadingWithdrawList = true.obs;
  var isLoadingBankList = true.obs;
  WithdrawController();

  final DepositWithDrawRepository _depositWithDrawRepository =
      DepositWithDrawRepository.instance;

  Future<void> getWithdrawList() async {
    isLoadingWithdrawList.value = true;
    try {
      withdrawList.value = await _depositWithDrawRepository.getWithdrawHistory();
      isLoadingWithdrawList.value = false;
    } catch (err) {
      SahaAlert.showError(message: err.toString());
      isLoadingWithdrawList.value = false;
    }
  }

  Future<void> getBankList() async {
    try {
      bankList.value = await _depositWithDrawRepository.getUserBankList();
      isLoadingBankList.value = false;
    } catch (err) {
      SahaAlert.showError(message: err.toString());
    }
  }
  
  Future<void> editBankInfo({
    required int id,
    required Map<String, dynamic> body,
  }) async {
    try {
      circularProgress();
      await SahaServiceManager().service?.editBankInfo(id, body);
      Get.back();
      Get.back();
      getWithdrawList();
    } catch (err) {
      SahaAlert.showError(message: err.toString());
    }
  }
  
  Future<void> addBank({
    required Map<String, dynamic> body,
  }) async {
    try {
      circularProgress();
      await SahaServiceManager().service?.addBank(body);
      Get.back();
      Get.to(const ManageAccountOTPSuccessPage());
      getWithdrawList();
    } catch (err) {
      SahaAlert.showError(message: err.toString());
    }
  }
}


Future<dynamic> circularProgress() {
  return showDialog(
    context: Get.context!,
    barrierDismissible: false,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
