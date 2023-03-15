import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserInformationState extends Equatable{

}

class PersonalInformationState extends UserInformationState {

  PersonalInformationState( this.data);
  final String pageTitle = "Personal Information";
  final String pageNumber = "1";
  final Map<String, List<String>> data;
  // = {
  //   "states":["Select State","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh (UT)","Chhattisgarh",
  //     "Dadra and Nagar Haveli (UT)","Daman and Diu (UT)","Delhi (NCT)","Goa",
  //     "Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand",
  //     "Karnataka","Kerala","Lakshadweep (UT)","Madhya Pradesh","Maharashtra",
  //     "Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry (UT)",
  //     "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand",
  //     "Uttar Pradesh","West Bengal"],
  //   "cities":["Select City"],
  //   "selected_state":["Select State"],
  //   "selected_city":["Select City"]
  // };

  @override
  // TODO: implement props
  List<Object?> get props => [pageTitle, pageNumber, data];

}

class AddressInformationState extends UserInformationState {
  AddressInformationState(this.data);

  //final List<String> cities;
  final Map<String, List<String>> data;
  // List<String> states = ["Select State","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh (UT)","Chhattisgarh",
  //   "Dadra and Nagar Haveli (UT)","Daman and Diu (UT)","Delhi (NCT)","Goa",
  //   "Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand",
  //   "Karnataka","Kerala","Lakshadweep (UT)","Madhya Pradesh","Maharashtra",
  //   "Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry (UT)",
  //   "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand",
  //   "Uttar Pradesh","West Bengal"];
  String pageTitle = "Address Information";
  String pageNumber = "2";

  //late List<String> cities = ["mumbai", 'bangalore'];


  @override
  List<Object?> get props => [ pageTitle, pageNumber,data];
}

class ReviewInformationState extends UserInformationState {

  ReviewInformationState(this.data);

  final Map<String, List<String>> data;
  final String pageTitle = "Review Information";
  final String pageNumber = "3";

  @override
  List<Object?> get props => [pageTitle, pageNumber, data];
}
