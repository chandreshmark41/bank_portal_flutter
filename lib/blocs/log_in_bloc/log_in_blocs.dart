


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'log_in_event.dart';
import 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  //final UserRepository _userRepository;

  LogInBloc() : super(const MobileLogInState()) {
    on<PickDateEvent>(
        (event, emit) async {
          emit(const MobileLogInState());
          //emit(PickedDateState(event.dateTime));
        }
    );
    on<MobileLogInButtonEvent>(
        (event, emit) async {
          emit(const MobileLogInState());
        }
    );
    on<CustomerIdLogInButtonEvent>(
        (event, emit) async {
          emit(CustomerIdLogInState());
        }
    );

    on<SendOtpButtonEvent>(
        (event, emit) async {
          //Navigator.pushNamed(context, "/otp_verification_page");
          emit(SendOtpButtonState());
          emit(const MobileLogInState());
        }
    );

    on<RegisterButtonEvent> (
        (event, emit) async {
          emit(RegisterButtonState());
          emit(const MobileLogInState());
        }
    );

    on<LogInButtonEvent> (
        (event, emit) {
          emit(LogInButtonState());
          emit(CustomerIdLogInState());
        }
    );

  }

}