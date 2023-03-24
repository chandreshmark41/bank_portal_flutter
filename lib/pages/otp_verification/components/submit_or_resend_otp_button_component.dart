import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/otp_bloc/otp_blocs.dart';
import '../../../blocs/otp_bloc/otp_event.dart';
import '../../../theme/flutter_flow_theme.dart';

class SubmitOrResendOtpButtonComponent extends StatelessWidget {
  const SubmitOrResendOtpButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}