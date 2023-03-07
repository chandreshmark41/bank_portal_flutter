import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class LogInEvent extends Equatable {
  const LogInEvent();
}

class PickDateEvent extends LogInEvent {
  const PickDateEvent(this.dateTime);
  final DateTime dateTime;
  @override
  List<Object?> get props => [dateTime];
}
