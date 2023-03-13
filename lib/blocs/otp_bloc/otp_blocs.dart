import 'dart:async';

import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_state.dart';
import 'package:bank_portal_flutter/blocs/otp_bloc/otp_event.dart';
import 'package:bank_portal_flutter/blocs/otp_bloc/otp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  late int time = 10;
  OtpBloc():super(OtpInitialState()) {
    on<SubmitButtonEvent>(
        (event, emit) {
          emit(SubmitButtonState());
        }
    );
  }
}