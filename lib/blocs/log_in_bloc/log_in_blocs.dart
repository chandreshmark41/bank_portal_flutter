


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'log_in_event.dart';
import 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  //final UserRepository _userRepository;

  LogInBloc() : super(MobileLogInState()) {
    on<PickDateEvent>(
        (event, emit) async {
          emit(PickedDateState(event.dateTime));
        }
    );
    on<MobileLogInEvent>(
        (event, emit) async {
          emit(MobileLogInState());
        }
    );
    on<CustomerIdLogInEvent>(
        (event, emit) async {
          emit(CustomerIdLogInState());
        }
    );

    // on<LoadUserEvent>(
    //         (event, emit) async {
    //       emit(UserLoadingState());
    //
    //       try{
    //         final users = await _userRepository.getUsers();
    //         emit(UserLoadedState(users));
    //       }
    //       catch(e){
    //         emit(UserErrorState(e.toString()));
    //       }
    //     }
    // );
    //
    // on<SelectUserEvent>(
    //         (event, emit) async {
    //       emit(PreUserLoadingState());
    //     }
    // );
  }

}