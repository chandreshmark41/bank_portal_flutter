import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/log_in_bloc/log_in_blocs.dart';
import '../../../blocs/log_in_bloc/log_in_event.dart';
import '../../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

class MobileLogInComponent extends StatelessWidget {
  const MobileLogInComponent({
    super.key, required this.mobileNumberController, required this.panNumberController, required this.state, required this.onSelectDate, this.pickedDateTime
  });

  final TextEditingController mobileNumberController;
  final TextEditingController panNumberController;
  final LogInState state;
  final VoidCallback onSelectDate;
  final pickedDateTime;
  //var  String pickedDateTime;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          //height: 60,
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.lerp(
                    Alignment(0, -0.5),
                    Alignment(0, -0.5),
                    1),
                height: 70,
                width: 100,
                child: Text(
                  'Mobile No:',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(
                      context)
                      .bodyText1
                      .override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(
                        context)
                        .axisMarronColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 70,
                width: 200,
                child: TextFormField(
                    controller:
                    mobileNumberController,
                    autovalidateMode:
                    AutovalidateMode
                        .onUserInteraction,
                    textAlign: TextAlign.center,
                    keyboardType:
                    TextInputType.number,
                    style:
                    FlutterFlowTheme.of(context)
                        .bodyText2,

                    //controller: nameController,
                    decoration: InputDecoration(
                      //fillColor: Colors.yellowAccent,
                      border:
                      const OutlineInputBorder(),
                      contentPadding:
                      EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 5),

                      //labelText: 'Mobile Number',
                      hintText:
                      'Please enter 10 digit number',
                      hintStyle:
                      FlutterFlowTheme.of(
                          context)
                          .bodyText2,
                      focusColor:
                      Colors.yellowAccent,
                      focusedBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          //color:FlutterFlowTheme.of(context).secondaryText,
                            color: FlutterFlowTheme
                                .of(context)
                                .greenValidationColor,
                            width: 2),
                      ),
                      focusedErrorBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                          FlutterFlowTheme.of(
                              context)
                              .axisRubyColor,
                          width: 2,
                        ),
                        //borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    inputFormatters: [
                      MaskTextInputFormatter(
                          mask: '##########')
                    ],
                    validator: (val) {
                      if (val == null ||
                          val.isEmpty) {
                        return 'Mobile number is required';
                      }
                      if (val.length < 10) {
                        return 'Mobile number is shorter';
                      }
                      return null;
                    }
                  //validator: _phoneTextFieldControllerValidator.asValidator(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          height: 1,
          color: FlutterFlowTheme.of(context)
              .axisGreyColor,
        ),
        Container(
          width: 400,
          //height: 60,
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.lerp(
                    Alignment(0, -0.1),
                    Alignment(0, -0.1),
                    0),
                height: 70,
                child: Text(
                  'Date of Birth:',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(
                      context)
                      .bodyText1
                      .override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(
                        context)
                        .axisMarronColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 45,
                  width: 200,
                  alignment: Alignment.lerp(
                      Alignment(0, -1.0),
                      Alignment(0, -1.0),
                      0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius:
                    BorderRadius.circular(3),
                    border: Border.all(
                        color: FlutterFlowTheme.of(
                            context)
                            .axisGreyColor),
                  ),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, 0, 8, 0),
                        child: IconButton(
                          color:
                          FlutterFlowTheme.of(
                              context)
                              .axisMarronColor,
                          onPressed: onSelectDate,
                          icon: const Icon(
                              Icons.calendar_month),
                          alignment:
                          Alignment.center,
                        ),
                      ),
                      Text(
                        pickedDateTime,
                        style: FlutterFlowTheme.of(
                            context)
                            .bodyText2,
                      )
                    ],
                  )),
            ],
          ),
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: FlutterFlowTheme.of(context)
                  .axisMarronColor,
            ),
          ),
          child: Text(
            "OR",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: FlutterFlowTheme.of(context)
                  .axisMarronColor,
            ),
          ),
        ),
        Container(
          width: 400,
          //height: 60,
          padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.lerp(
                    Alignment(0, -0.5),
                    Alignment(0, -0.5),
                    0),
                height: 70,
                child: Text(
                  'Pan Number:',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(
                      context)
                      .bodyText1
                      .override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(
                        context)
                        .axisMarronColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 70,
                width: 200,
                child: TextFormField(
                    controller: panNumberController,
                    autovalidateMode:
                    AutovalidateMode
                        .onUserInteraction,
                    textCapitalization:
                    TextCapitalization
                        .characters,
                    textAlign: TextAlign.center,
                    keyboardType:
                    TextInputType.text,
                    style:
                    FlutterFlowTheme.of(context)
                        .bodyText2,

                    //controller: nameController,
                    decoration: InputDecoration(
                      //fillColor: Colors.yellowAccent,
                      border:
                      const OutlineInputBorder(),
                      contentPadding:
                      EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 5),

                      //labelText: 'Mobile Number',
                      hintText:
                      'format should be ABCDE1234F',
                      hintStyle:
                      FlutterFlowTheme.of(
                          context)
                          .bodyText2,
                      focusedBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          //color:FlutterFlowTheme.of(context).secondaryText,
                            color: FlutterFlowTheme
                                .of(context)
                                .greenValidationColor,
                            width: 2),
                      ),
                      focusedErrorBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                          FlutterFlowTheme.of(
                              context)
                              .axisRubyColor,
                          width: 2,
                        ),
                        //borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    inputFormatters: [
                      MaskTextInputFormatter(
                          mask: 'AAAAA####A')
                    ],
                    validator: (val) {
                      if (state
                      is MobileLogInState) {
                        if (val == null ||
                            val.isEmpty) {
                          return 'Field is required';
                        }
                        if (val.length < 10) {
                          return 'Pan number is shorter';
                        }
                      }

                      return null;
                    }
                  //validator: _phoneTextFieldControllerValidator.asValidator(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          alignment: Alignment.center,
          child: Container(
            width: 120,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                overlayColor:
                MaterialStateProperty.all(
                    FlutterFlowTheme.of(context)
                        .axisRubyColor),
                backgroundColor:
                MaterialStateProperty.all(
                    FlutterFlowTheme.of(context)
                        .axisGreyColor),
              ),
              child: new Text('Send OTP'),
              onPressed: () {
                //Navigator.pushNamed(context, "/otp_verification_page");
                BlocProvider.of<LogInBloc>(context)
                    .add(SendOtpButtonEvent());
              },
            ),
          ),
        )
      ],
    );
  }
}