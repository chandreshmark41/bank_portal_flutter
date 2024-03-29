import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class LogInEvent extends Equatable {
  const LogInEvent();
}

class PickDateEvent extends LogInEvent {
  const PickDateEvent(this.dateTime);
  final String dateTime;
  @override
  List<Object?> get props => [dateTime];
}

class MobileLogInButtonEvent extends LogInEvent {

  @override
  List<Object?> get props => [];

}

class CustomerIdLogInButtonEvent extends LogInEvent {

  @override
  List<Object?> get props => [];

}

class SendOtpButtonEvent extends LogInEvent{

  @override
  List<Object?> get props => [];
}

class RegisterButtonEvent extends LogInEvent {

  @override
  List<Object?> get props => [];
}

class LogInButtonEvent extends LogInEvent {

  @override
  List<Object?> get props => [];
}


// class InitialPageEvent extends LogInEvent {
//   @
// }