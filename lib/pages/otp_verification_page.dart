
import 'dart:async';

import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_event.dart';
import 'package:bank_portal_flutter/blocs/otp_bloc/otp_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/otp_bloc/otp_blocs.dart';
import '../blocs/otp_bloc/otp_state.dart';
import '../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


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
    firstOtpDigit = TextEditingController();
    secondOtpDigit = TextEditingController();
    thirdOtpDigit = TextEditingController();
    fourthOtpDigit = TextEditingController();
    fifthOtpDigit = TextEditingController();
    sixthOtpDigit = TextEditingController();
    timerValue = 10;
  }

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context) => OtpBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child:Text( "Enter OTP"),
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
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Container(
                        width: 300,
                        height: 90,
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        //5color: Colors.yellowAccent,
                        child:Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: firstOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  onChanged: (_) async {
                                    if(firstOtpDigit.text.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }

                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: secondOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  onChanged: (_) async {
                                    if(secondOtpDigit.text.length == 0){
                                      FocusScope.of(context).focusInDirection(TraversalDirection.left);
                                      FocusScope.of(context).previousFocus();

                                    }
                                    FocusScope.of(context).nextFocus();
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: thirdOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  onChanged: (_) async {
                                    if(thirdOtpDigit.text.length == 0){
                                      FocusScope.of(context).focusInDirection(TraversalDirection.left);
                                      FocusScope.of(context).previousFocus();
                                    }
                                    FocusScope.of(context).nextFocus();
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: fourthOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  onChanged: (_) async {
                                    if(fourthOtpDigit.text.length == 0){
                                      FocusScope.of(context).focusInDirection(TraversalDirection.left);
                                      FocusScope.of(context).previousFocus();
                                    }
                                    FocusScope.of(context).nextFocus();
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: fifthOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  // onEditingComplete: () async{
                                  //   FocusScope.of(context).previousFocus();
                                  // },
                                  onChanged: (_) async {
                                    if(fifthOtpDigit.text.length == 0){
                                      FocusScope.of(context).focusInDirection(TraversalDirection.left);
                                      FocusScope.of(context).previousFocus();
                                    }
                                    FocusScope.of(context).nextFocus();
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: TextFormField(
                                  controller: sixthOtpDigit,
                                  keyboardType: TextInputType.number,
                                  autofocus: true,
                                  onChanged: (_) async {


                                    if(sixthOtpDigit.text.length == 0){
                                      FocusScope.of(context).focusInDirection(TraversalDirection.left);
                                      FocusScope.of(context).previousFocus();
                                    }
                                    FocusScope.of(context).nextFocus();
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                          width: 2.0
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context).axisGreyColor,

                                      ),
                                    ),
                                  ),
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: '#')
                                  ],
                                ),
                              ),

                            ]


                        ) ,

                      )
                  ),

                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                        backgroundColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisGreyColor),
                      ),
                      child: new Text('Submit'),
                      onPressed: () {
                       BlocProvider.of<OtpBloc>(context).add( SubmitButtonEvent() );

                      },
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
                      width: 300,
                      //height: 70,
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend OTP",
                            textAlign: TextAlign.center,
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
              ),
            );
          }
        )

      )
    );

  }

}