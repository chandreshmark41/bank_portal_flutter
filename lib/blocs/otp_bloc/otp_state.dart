
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class OtpState extends Equatable{
  const OtpState();
}

class OtpInitialState extends OtpState {

   OtpInitialState();


  @override
  List<Object?> get props => [];
}
class SubmitButtonState extends OtpState{

  @override
  List<Object?> get props => [];
}