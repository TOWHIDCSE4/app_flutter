import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gohomy/data/remote/inteceptors/auth_interceptor.dart';
import 'package:gohomy/screen/profile/deposit_withdraw/domain/withdraw_history_model.dart';
import 'package:gohomy/utils/user_info.dart';

import '../domain/deposit_history_model.dart';

class DepositWithDrawRepository {
  DepositWithDrawRepository._();
  static DepositWithDrawRepository instance = DepositWithDrawRepository._();

  final String _baseUrl = UserInfo().getIsRelease() == null
      ? 'https://rencity-api.ikitech.vn/api/'
      : 'http://gohomydev.ikitech.vn/api/';

  Future<List<Deposit>> getDepositHistory() async {
    List<Deposit> depositList = [];
    var dio = Dio();
    dio.interceptors.add(AuthInterceptor());
    var response = await dio.get('${_baseUrl}admin/deposits');

    if (response.statusCode == 200) {
      log(json.encode(response.data));
      depositList = depositHistoryModelFromJson(response.data).data;
      return depositList;
    } else {
      log(response.statusMessage.toString());
      return depositList;
    }
  }

  Future<List<Withdraw>> getWithdrawHistory() async {
    List<Withdraw> withdrawList = [];
    var dio = Dio();
    dio.interceptors.add(AuthInterceptor());
    var response = await dio.get('${_baseUrl}admin/withdraws');

    if (response.statusCode == 200) {
      log(json.encode(response.data));
      withdrawList = withdrawHistoryModelFromJson(response.data).data;
      return withdrawList;
    } else {
      log(response.statusMessage.toString());
      return withdrawList;
    }
  }
}
