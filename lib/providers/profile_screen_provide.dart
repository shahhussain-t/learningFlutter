import 'package:flutter/material.dart';

class ProfileScreenProvide with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMesg = "";

  void checkEligbility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMesg = "Yout are eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMesg = " Your are not eligible";
      notifyListeners();
    }
  }
}
