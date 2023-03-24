
import 'dart:async';

import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/otp_bloc/otp_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/otp_bloc/otp_blocs.dart';
import '../../blocs/otp_bloc/otp_state.dart';
import '../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'components/otp_form_component.dart';
import 'components/submit_or_resend_otp_button_component.dart';


class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});



  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController firstOtpDigit;
  late TextEditingController secondOtpDigit;
  late TextEditingController thirdOtpDigit;
  late TextEditingController fourthOtpDigit;
  late TextEditingController fifthOtpDigit;
  late TextEditingController sixthOtpDigit;
  late int timerValue;

  @override
  void initState(){
    super.initState();
    firstOtpDigit = TextEditingController();
    secondOtpDigit = TextEditingController();
    thirdOtpDigit = TextEditingController();
    fourthOtpDigit = TextEditingController();
    fifthOtpDigit = TextEditingController();
    sixthOtpDigit = TextEditingController();
    timerValue = 10;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context) => OtpBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child:Text( "Enter OTP"),
          ),
          backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
        ),
        body: BlocConsumer<OtpBloc,OtpState>(
          listener: (context,state) {
            if(state is SubmitButtonState){
              Navigator.pushNamed(context, '/user_home_page');
            }
          },
          builder: (context,state) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  OtpFormComponent(formKey: _formKey, firstOtpDigit: firstOtpDigit, secondOtpDigit: secondOtpDigit, thirdOtpDigit: thirdOtpDigit, fourthOtpDigit: fourthOtpDigit, fifthOtpDigit: fifthOtpDigit, sixthOtpDigit: sixthOtpDigit),
                  const SubmitOrResendOtpButtonComponent()
                ],
              ),
            );
          }
        )
      )
    );
  }
}


