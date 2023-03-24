import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/log_in_bloc/log_in_blocs.dart';
import '../../../blocs/log_in_bloc/log_in_event.dart';
import '../../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomerIdLogInComponent extends StatelessWidget {
  const CustomerIdLogInComponent({
    super.key,
    required this.customerIdController,
    required this.passwordController,
  });

  final TextEditingController customerIdController;
  final TextEditingController passwordController;

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
                  'CustomerId:',
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
                  'Password:',
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
                    obscureText: true,
                    controller: passwordController,
                    autovalidateMode:
                    AutovalidateMode
                        .onUserInteraction,
                    textAlign: TextAlign.center,
                    keyboardType:
                    TextInputType.text,
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
                          color:
                          FlutterFlowTheme.of(
                              context)
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
                overlayColor:
                MaterialStateProperty.all(
                    FlutterFlowTheme.of(context)
                        .axisRubyColor),
                backgroundColor:
                MaterialStateProperty.all(
                    FlutterFlowTheme.of(context)
                        .axisGreyColor),
              ),
              child: new Text('Log In'),
              onPressed: () {
                BlocProvider.of<LogInBloc>(context).add(LogInButtonEvent());
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
            //height: 70,
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                  style:
                  FlutterFlowTheme.of(context)
                      .bodyText2,
                  selectionColor:
                  FlutterFlowTheme.of(context)
                      .axisRubyColor,
                )
            )
        ),
      ],
    );
  }
}