import 'package:bank_portal_flutter/blocs/common_methods/get_city_values.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_event.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInformationBloc extends Bloc<UserInformationEvent, UserInformationState> {
  UserInformationBloc():super(PersonalInformationState("Personal Information","1")) {
    on<NextButtonPersonalInformation>(
            (event, emit) {
          emit(AddressInformationState("Address Information", "2", ["Please select City"]));
        }
    );
    on<BackButtonAddressInformation>(
        (event, emit){
          emit(PersonalInformationState("Personal Information", "1"));
        }
    );
    on<SelectStateValue>(
        (event, emit){
          var cities = getCityValues(event.state);
          emit(AddressInformationState("Address Information", "2",cities ));
        }
    );
  }
}