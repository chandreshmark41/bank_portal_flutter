import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_blocs.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_state.dart';
import 'package:bank_portal_flutter/pages/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

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
  late LogInModel _logInModel;
  late String dateTimeString;

  late Color mobileButtonColor;
  late Color customerIdButtonColor;

  @override
  void initState() {
    super.initState();
    mobileNumberController = TextEditingController();
    panNumberController = TextEditingController();
    customerIdController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LogInBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: Center(child:Text(
              widget.title
            ),),
            backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
          ),
          body: BlocBuilder<LogInBloc, LogInState>(builder: (context, state) {
            if (state is MobileLogInState) {
              dateTimeString = "DD-MM-YYYY";
            }
            if (state is PickedDateState) {
              dateTimeString = state.pickedDate.toString();
            }
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

            return
                //Center(child:
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    //width: 350,
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 350,
                            child: ButtonBar(
                              mainAxisSize: MainAxisSize.max,
                              alignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              mobileButtonColor),
                                    ),
                                    child: new Text('Mobile'),
                                    onPressed: () {
                                      BlocProvider.of<LogInBloc>(context)
                                          .add(MobileLogInEvent());
                                    },
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              customerIdButtonColor),
                                    ),
                                    child: new Text('CustomerId'),
                                    onPressed: () {
                                      BlocProvider.of<LogInBloc>(context)
                                          .add(CustomerIdLogInEvent());
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            width: 350,
                            //height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Form(
                              //key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (state is MobileLogInState ||
                                      state is PickedDateState)
                                    Column(
                                      children: [
                                        Container(
                                          width: 400,
                                          //height: 60,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisMarronColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    style: FlutterFlowTheme.of(
                                                        context)
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
                                                      focusColor: Colors.yellowAccent,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                          color: FlutterFlowTheme.of(context).axisGreyColor,
                                        ),
                                        Container(
                                          width: 400,
                                          //height: 60,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisMarronColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        BorderRadius.circular(
                                                            3),
                                                    border: Border.all(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisGreyColor),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                                        child:IconButton(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .axisMarronColor,
                                                          onPressed: () async {
                                                            var _datePickedDate =
                                                            await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                              DateTime.now(),
                                                              firstDate:
                                                              DateTime(1900),
                                                              lastDate:
                                                              DateTime(2050),
                                                            );
                                                            if (_datePickedDate !=
                                                                null) {
                                                              pickedDateTime = DateFormat(
                                                                  'dd-MM-yyy')
                                                                  .format(
                                                                  _datePickedDate);
                                                              BlocProvider.of<
                                                                  LogInBloc>(
                                                                  context)
                                                                  .add(PickDateEvent(
                                                                  pickedDateTime));
                                                            }
                                                          },
                                                          icon: const Icon(Icons
                                                              .calendar_month),
                                                          alignment:
                                                          Alignment.center,
                                                        ),
                                                      ),


                                                      Text("$dateTimeString", style:FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,)
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .axisMarronColor,
                                            ),
                                          ),
                                          child: Text(
                                            "OR",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .axisMarronColor,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          //height: 60,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisMarronColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        panNumberController,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    textCapitalization:
                                                        TextCapitalization
                                                            .characters,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    style: FlutterFlowTheme.of(
                                                        context)
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                                                backgroundColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisGreyColor),
                                              ),
                                              child: new Text('Send OTP'),
                                              onPressed: () {
                                                // BlocProvider.of<LogInBloc>(context)
                                                //     .add(CustomerIdLogInEvent());
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (state is CustomerIdLogInState)
                                    Column(
                                      children: [
                                        Container(
                                          width: 400,
                                          //height: 60,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                                                  'CustomerId:',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisMarronColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        customerIdController,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),

                                                    //controller: nameController,
                                                    decoration: InputDecoration(
                                                      //filled: true,
                                                      //fillColor: Colors.yellowAccent,
                                                      border:
                                                          const OutlineInputBorder(),
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2,
                                                              horizontal: 5),

                                                      //labelText: 'Mobile Number',
                                                      hintText:
                                                          'Please enter your CustomerId',
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .axisRubyColor,
                                                          width: 2,
                                                        ),
                                                        //borderRadius: BorderRadius.circular(10),
                                                      ),
                                                    ),
                                                    inputFormatters: [
                                                      MaskTextInputFormatter(
                                                          mask: '########')
                                                    ],
                                                    validator: (val) {
                                                      if (val == null ||
                                                          val.isEmpty) {
                                                        return 'CustomerId is required';
                                                      }
                                                      if (val.length < 8) {
                                                        return 'It should be of 8 digits';
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
                                          //height: 60,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                                                  'Password:',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .axisMarronColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    obscureText: true,
                                                    controller:
                                                        passwordController,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),

                                                    //controller: nameController,
                                                    decoration: InputDecoration(
                                                      //filled: true,
                                                      //fillColor: Colors.yellowAccent,
                                                      border:
                                                          const OutlineInputBorder(),
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2,
                                                              horizontal: 5),

                                                      //labelText: 'Mobile Number',
                                                      hintText:
                                                          'Please enter your password',
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .axisRubyColor,
                                                          width: 2,
                                                        ),
                                                        //borderRadius: BorderRadius.circular(10),
                                                      ),
                                                    ),
                                                    // inputFormatters: [
                                                    //   MaskTextInputFormatter(
                                                    //       mask: '########')
                                                    // ],
                                                    validator: (val) {
                                                      if (val == null ||
                                                          val.isEmpty) {
                                                        return 'password is required';
                                                      }
                                                      if (val.length < 8) {
                                                        return 'atleast 8 digits';
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
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            width: 120,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                                                backgroundColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisGreyColor),
                                              ),
                                              child: new Text('Log In'),
                                              onPressed: () {
                                                // BlocProvider.of<LogInBloc>(context)
                                                //     .add(CustomerIdLogInEvent());
                                              },
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .axisMarronColor,
                                            ),
                                          ),
                                          child: Text(
                                            "OR",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .axisMarronColor,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          //height: 70,
                                          alignment: Alignment.center,
                                          child: TextButton(
                                              onPressed: (){},
                                              child: Text("Forgot Password?", textAlign: TextAlign.right,
                                                style: FlutterFlowTheme.of(context).bodyText2,
                                                selectionColor: FlutterFlowTheme.of(context).axisRubyColor,)
                                          )
                                        ),



                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),

                        ]
            )

            );
            //);
          }),
        ));
  }
}
