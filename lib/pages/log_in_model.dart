import 'package:flutter/material.dart';

class LogInModel {
   LogInModel();


  //final phoneTextFieldMask = MaskTextInputFormatter(mask: '##########');


  String? mobileTextFieldControllerValidator(val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'phone number is less than 10 digits';
    }

    return null;
  }
}