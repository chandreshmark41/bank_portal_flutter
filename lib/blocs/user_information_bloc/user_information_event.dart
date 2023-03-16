import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserInformationEvent extends Equatable{

}

class NextButtonPersonalInformationEvent extends UserInformationEvent{

  NextButtonPersonalInformationEvent(this.data);

  final Map<String, List<String>> data;

  @override
  List<Object?> get props => [data];
}

class BackButtonAddressInformationEvent extends UserInformationEvent {

  BackButtonAddressInformationEvent(this.data);

  final Map<String, List<String>> data;

  //late List<String> cities = ["mumbai", 'bangalore'];

  @override
  List<Object?> get props => [data];
}

class SelectStateValueEvent extends UserInformationEvent {

  SelectStateValueEvent(this.state, this.data);

  final String state;
  final Map<String, List<String>> data;

  @override
  List<Object?> get props => [state, data];
}

class SelectCityValueEvent extends UserInformationEvent {
  SelectCityValueEvent(this.city, this.data);

  final String city;
  final Map<String, List<String>> data;

  @override
  // TODO: implement props
  List<Object?> get props => [city, data];
}

class NextButtonAddressInformationEvent extends UserInformationEvent {

  NextButtonAddressInformationEvent(this.data);

  final Map<String, List<String>> data;

  @override
  List<Object?> get props => [data];

}

class BackButtonReviewInformationEvent extends UserInformationEvent {
  BackButtonReviewInformationEvent(this.data);

  final Map<String, List<String>> data;

  @override
  List<Object?> get props => [data];
}

class BackToLogInPageEvent extends UserInformationEvent {

  @override
  List<Object?> get props => [];
}