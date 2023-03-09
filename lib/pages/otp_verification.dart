
import 'package:flutter/material.dart';

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

  @override
  void initState(){
    firstOtpDigit = TextEditingController();
    secondOtpDigit = TextEditingController();
    thirdOtpDigit = TextEditingController();
    fourthOtpDigit = TextEditingController();
    fifthOtpDigit = TextEditingController();
    sixthOtpDigit = TextEditingController();
  }

  @override
  Widget build(BuildContext context){
    return
      Scaffold(
        appBar: AppBar(
        title: Center(child:Text( "Enter OTP"),
        ),
        backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
    ),
      body:Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Form(
            key: _formKey,
          child: Container(
            width: 300,
            height: 100,
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
            child: ElevatedButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisRubyColor),
                backgroundColor: MaterialStateProperty.all(FlutterFlowTheme.of(context).axisGreyColor),
              ),
              child: new Text('Submit'),
              onPressed: () {
                // BlocProvider.of<LogInBloc>(context)
                //     .add(CustomerIdLogInEvent());
              },
            ),
          ),


        ],
      ),
    ),
      );
  }

}