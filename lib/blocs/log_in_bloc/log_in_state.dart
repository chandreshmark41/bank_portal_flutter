

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class LogInState extends Equatable {
  const LogInState();
}


class PickedDateState extends LogInState {

  const PickedDateState(this.pickedDate);
  final DateTime pickedDate;

  @override
  List<Object?> get props => [pickedDate];

}

class InitialPageState extends LogInState {
  const InitialPageState();

  @override
  List<Object?> get props => [];

}