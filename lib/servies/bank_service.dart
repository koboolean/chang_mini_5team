import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_toss/model/bank.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BankService extends ChangeNotifier {
  var f = NumberFormat('###,###,###,###');

  SharedPreferences? prefs;
  List<Bank> myBankList = [];

  BankService(SharedPreferences preferences) {
    prefs = preferences;

    getPrefsData();
  }
  // bank Data 가져오기
  getPrefsData() {
    var testData = Bank.fromJson({"name": "테스트", "bank_image": "assets/kakao_bank.png", "balance": 1000000});
    myBankList.add(testData);
    /*
    String? savedString = prefs?.getString('banks');
    if (savedString != null) {
      myBankList = [];
      jsonDecode(savedString).forEach((e) {
        myBankList.add(Bank.fromJson(e));
      });
    }
    */
  }
}