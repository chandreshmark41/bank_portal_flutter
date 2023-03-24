
import 'package:flutter/material.dart';

import '../../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class OtpFormComponent extends StatelessWidget {
  const OtpFormComponent({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.firstOtpDigit,
    required this.secondOtpDigit,
    required this.thirdOtpDigit,
    required this.fourthOtpDigit,
    required this.fifthOtpDigit,
    required this.sixthOtpDigit,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController firstOtpDigit;
  final TextEditingController secondOtpDigit;
  final TextEditingController thirdOtpDigit;
  final TextEditingController fourthOtpDigit;
  final TextEditingController fifthOtpDigit;
  final TextEditingController sixthOtpDigit;

  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}