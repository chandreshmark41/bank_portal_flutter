import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class OtpEvent extends Equatable{
  const OtpEvent();
}

class InitialEvent extends OtpEvent{
   const InitialEvent();

  @override
  List<Object?> get props => [];
}

class SubmitButtonEvent extends OtpEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}