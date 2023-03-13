import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserInformationEvent extends Equatable{

}

class NextButtonPersonalInformation extends UserInformationEvent{

  @override
  List<Object?> get props => [];
}

class BackButtonAddressInformation extends UserInformationEvent {

  //late List<String> cities = ["mumbai", 'bangalore'];

  @override
  List<Object?> get props => [];
}

class SelectStateValue extends UserInformationEvent {

  SelectStateValue(this.state);

  final String state;

  @override
  List<Object?> get props => [state];
}