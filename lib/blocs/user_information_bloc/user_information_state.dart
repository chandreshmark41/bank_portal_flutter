import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserInformationState extends Equatable{

}

class PersonalInformationState extends UserInformationState {

  PersonalInformationState(this.pageTitle, this.pageNumber);
  final String pageTitle;
  final String pageNumber;
  @override
  // TODO: implement props
  List<Object?> get props => [pageTitle, pageNumber];

}

class AddressInformationState extends UserInformationState {
  AddressInformationState(this.pageTitle, this.pageNumber, this.cities);

  final String pageTitle;
  final String pageNumber;
  final List<String> cities;
  List<String> states = ["Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh (UT)","Chhattisgarh","Dadra and Nagar Haveli (UT)","Daman and Diu (UT)","Delhi (NCT)","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep (UT)","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry (UT)","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand","Uttar Pradesh","West Bengal"];
  //late List<String> cities = ["mumbai", 'bangalore'];

  @override
  List<Object?> get props => [pageTitle , pageNumber, states, cities];
}