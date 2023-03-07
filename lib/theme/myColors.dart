import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors  {
  

  Color colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  late Color axisMaroonColor = colorFromHex('#AE275F');
  late Color axisRubyColor = colorFromHex('#EB1165');
}