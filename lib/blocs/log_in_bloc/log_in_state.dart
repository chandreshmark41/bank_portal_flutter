

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class LogInState extends Equatable {
  const LogInState();
}


class PickedDateState extends LogInState {

  const PickedDateState(this.pickedDate);
  final String pickedDate;

  @override
  List<Object?> get props => [pickedDate];

}

class InitialPageState extends LogInState {
   const InitialPageState();


  @override
  List<Object?> get props => [];

}

class MobileLogInState extends LogInState {

  const MobileLogInState();

  //final String dateOfBirth;

  @override
  List<Object?> get props => [];
}

class CustomerIdLogInState extends LogInState {

  @override
  List<Object?> get props => [];
}

class SendOtpButtonState extends LogInState {

  @override
  List<Object?> get props => [];
}

class RegisterButtonState extends LogInState {

  @override
  List<Object?> get props => [];
}

class LogInButtonState extends LogInState {

  @override
  List<Object?> get props => [];
}