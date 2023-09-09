import 'package:get/get.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/data/deposit_withdraw_repository.dart';

import '../../../../components/arlert/saha_alert.dart';
import '../domain/withdraw_history_model.dart';

class WithdrawController extends GetxController {
  var withdrawList = <Withdraw>[].obs;
  var isLoadingWithdrawList = true.obs; 
  WithdrawController();

  final DepositWithDrawRepository _depositWithDrawRepository =
      DepositWithDrawRepository.instance;

  Future<void> getWithdrawList() async {
    try {
      withdrawList.value = await _depositWithDrawRepository.getWithdrawHistory();
      isLoadingWithdrawList.value = false;
    } catch (err) {
      SahaAlert.showError(message: err.toString());
    }
  }
}
