import 'dart:math';

import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_blocs.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_state.dart';
import 'package:bank_portal_flutter/pages/log_in/components/mobile_login_component.dart';
import 'package:bank_portal_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

import 'components/customer_id_login_component.dart';
import 'components/mobile_customerId_register_button_component.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key, required this.title});

  final String title;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late TextEditingController mobileNumberController;
  late TextEditingController panNumberController;
  late TextEditingController customerIdController;
  late TextEditingController passwordController;
  late String pickedDateTime;
  late Color mobileButtonColor;
  late Color customerIdButtonColor;

  @override
  void initState() {
    super.initState();
    mobileNumberController = TextEditingController();
    panNumberController = TextEditingController();
    customerIdController = TextEditingController();
    passwordController = TextEditingController();
    pickedDateTime = "DD-MM-YY";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    mobileNumberController.clear();
    panNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LogInBloc(),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(widget.title),
            ),
            backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
          ),
          body: BlocConsumer<LogInBloc, LogInState>(listener: (context, state) {
            if (state is SendOtpButtonState) {
              Navigator.pushNamed(context, "/otp_verification_page");
            }

            if (state is RegisterButtonState) {
              Navigator.pushNamed(context, "/user_information_page");
            }

            if (state is LogInButtonState) {
              Navigator.pushNamed(context, "/user_home_page");
            }
          },
              builder: (context, state) {
            if (state is MobileLogInState) {
              mobileButtonColor = FlutterFlowTheme.of(context).axisRubyColor;
              customerIdButtonColor =
                  FlutterFlowTheme.of(context).axisGreyColor;
            }
            if (state is CustomerIdLogInState) {
              customerIdButtonColor =
                  FlutterFlowTheme.of(context).axisRubyColor;
              mobileButtonColor = FlutterFlowTheme.of(context).axisGreyColor;
            }

            return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                //color: Colors.grey[300],
                //width: 350,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 120, 10, 20),
                            width: 350,
                            //height: 250,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                            ),
                            child: Form(
                              //key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (state is MobileLogInState)
                                    MobileLogInComponent(
                                      mobileNumberController:
                                      mobileNumberController,
                                      panNumberController: panNumberController,
                                      state: state,
                                      onSelectDate: () async {
                                        var datePickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2050),
                                        );
                                        if (datePickedDate != null) {
                                          pickedDateTime = DateFormat('dd-MM-yyy')
                                              .format(datePickedDate);
                                          BlocProvider.of<LogInBloc>(context)
                                              .add(PickDateEvent(pickedDateTime));
                                        }
                                      },
                                      pickedDateTime: pickedDateTime,
                                    ),
                                  if (state is CustomerIdLogInState)
                                    CustomerIdLogInComponent(
                                        customerIdController: customerIdController,
                                        passwordController: passwordController),
                                ],
                              ),
                            ),
                          ),
                          MobileCustomerIdRegisterButtonComponent(
                              mobileButtonColor: mobileButtonColor,
                              customerIdButtonColor: customerIdButtonColor),
                        ],
                      ),
                    ]
                ),
            );
          }
          ),
        ),
    );
  }
}
