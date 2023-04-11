import 'package:bank_portal_flutter/blocs/common_methods/get_city_values.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_event.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repos/user_information_repo.dart';

class UserInformationBloc extends Bloc<UserInformationEvent, UserInformationState> {
  final UserInformationRepository _userInformationRepository;
  UserInformationBloc(this._userInformationRepository):super(PersonalInformationState({
      "states":["Select State","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh (UT)","Chhattisgarh",
        "Dadra and Nagar Haveli (UT)","Daman and Diu (UT)","Delhi (NCT)","Goa",
        "Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand",
        "Karnataka","Kerala","Lakshadweep (UT)","Madhya Pradesh","Maharashtra",
        "Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry (UT)",
        "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand",
        "Uttar Pradesh","West Bengal"],
      "cities":["                    Select City"],
      "selected_state":["Select State"],
      "selected_city":["                    Select City"]
    }
    )
  ) {
    on<NextButtonPersonalInformationEvent>(
            (event, emit) {
          emit(AddressInformationState(event.data));
        }
    );
    on<BackButtonAddressInformationEvent>(
        (event, emit){
          emit(PersonalInformationState(event.data));
        }
    );

    on<SelectStateValueEvent>(
        (event, emit) {
          event.data["selected_state"] = [event.state];
          var cities = getCityValues(event.state);
          cities.insert(0, "                    Select City");
          event.data["cities"] = cities;

          emit(AddressInformationState(event.data));
        }
    );

    on<SelectCityValueEvent>(
        (event, emit){
          event.data["selected_city"] = [event.city];
          emit(AddressInformationState(event.data));
        }
    );

    on<NextButtonAddressInformationEvent> (
        (event, emit) {
          emit(ReviewInformationState(event.data));
        }
    );

    on<BackButtonReviewInformationEvent> (
        (event, emit) {
          emit(AddressInformationState(event.data));
        }
    );

    on<BackToLogInPageEvent> (
        (event, emit) {
          emit(BackToLogInPageState());
        }
    );

    on<SubmitUserInformationButtonEvent> (
        (event, emit) async {
          emit(UserInformationLoadingState());
          await Future.delayed(const Duration(milliseconds: 2000));
          emit(UserInformationVerificationState());
          // await Future.delayed(const Duration(milliseconds: 2000));
          // emit(SuccessSubmissionUserInformationState());


          try {
            final isSuccess = await _userInformationRepository.submitUserInformation(event.personalInformationModel, event.addressInformationModel);
            if(isSuccess) {
              emit(SuccessSubmissionUserInformationState());
            }
          }
          catch (e){

              }
        }

    );
  }
}