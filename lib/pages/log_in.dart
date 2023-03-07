import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_blocs.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_state.dart';
import 'package:bank_portal_flutter/pages/log_in_model.dart';
import 'package:bank_portal_flutter/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key, required this.title});

  final String title;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late TextEditingController mobileNumberController;
  late TextEditingController panNumberController;
  late DateTime pickedDateTime;
  late LogInModel _logInModel;
  late String dateTimeString;

  @override
  void initState() {
    super.initState();
    mobileNumberController = TextEditingController();
    panNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LogInBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              widget.title,
            ),
            backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
          ),
          body: BlocBuilder<LogInBloc, LogInState>(builder: (context, state) {
            if(state is InitialPageState){
              dateTimeString = "YYYY-MM-DD";
            }
            if(state is PickedDateState){
              dateTimeString = state.pickedDate.toString();
            }

            return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    //alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    width: 727,
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
                          Container(
                            width: 400,
                            //height: 60,
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.lerp(Alignment(0, -0.5),
                                      Alignment(0, -0.5), 1),
                                  height: 70,
                                  width: 100,
                                  child: Text(
                                    'Mobile No:',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
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
                                      controller: mobileNumberController,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.number,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),

                                      //controller: nameController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //fillColor: Colors.yellowAccent,
                                        border: const OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 5),

                                        //labelText: 'Mobile Number',
                                        hintText:
                                            'Please enter 10 digit number',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              //color:FlutterFlowTheme.of(context).secondaryText,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .greenValidationColor,
                                              width: 2),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
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
                                        if (val == null || val.isEmpty) {
                                          return 'Field is required';
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
                            //height: 60,
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  alignment: Alignment.lerp(Alignment(0, -0.5),
                                      Alignment(0, -0.5), 0),
                                  height: 70,
                                  child: Text(
                                    'Date of Birth:',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
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
                                    height: 70,
                                    width: 200,
                                    alignment: Alignment.lerp(
                                        Alignment(0, -0.5),
                                        Alignment(0, -0.5),
                                        0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () async {
                                            final _datePickedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1900),
                                              lastDate: DateTime(2050),
                                            );
                                            if (_datePickedDate != null) {
                                              pickedDateTime = DateTime(
                                                _datePickedDate.year,
                                                _datePickedDate.month,
                                                _datePickedDate.day,
                                              );
                                              BlocProvider.of<LogInBloc>(context).add(PickDateEvent(pickedDateTime));
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.calendar_month),
                                          alignment: Alignment.center,
                                        ),
                                        Text("$dateTimeString")

                                      ],
                                    )
                                ),
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
                            padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  alignment: Alignment.lerp(Alignment(0, -0.5),
                                      Alignment(0, -0.5), 0),
                                  height: 70,
                                  child: Text(
                                    'Pan Number:',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
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
                                          AutovalidateMode.onUserInteraction,
                                      textCapitalization:
                                          TextCapitalization.characters,
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.number,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),

                                      //controller: nameController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //fillColor: Colors.yellowAccent,
                                        border: const OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 5),

                                        //labelText: 'Mobile Number',
                                        hintText: 'format should be ABCDE1234F',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              //color:FlutterFlowTheme.of(context).secondaryText,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .greenValidationColor,
                                              width: 2),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
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
                                        if (val == null || val.isEmpty) {
                                          return 'Field is required';
                                        }
                                        if (val.length < 10) {
                                          return 'Pan number is shorter';
                                        }
                                        return null;
                                      }
                                      //validator: _phoneTextFieldControllerValidator.asValidator(context),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            );
          }
          ),
        )
    );
  }
}
