import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/log_in_bloc/log_in_blocs.dart';
import '../../../blocs/log_in_bloc/log_in_event.dart';
import '../../../theme/flutter_flow_theme.dart';

class MobileCustomerIdRegisterButtonComponent extends StatelessWidget {
  const MobileCustomerIdRegisterButtonComponent({
    super.key,
    required this.mobileButtonColor,
    required this.customerIdButtonColor,
  });

  final Color mobileButtonColor;
  final Color customerIdButtonColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5) ),
              //color: FlutterFlowTheme.of(context).axisRubyColor,
            ),
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
                      overlayColor: MaterialStateProperty.all(
                          FlutterFlowTheme.of(context)
                              .axisRubyColor),
                      backgroundColor: MaterialStateProperty.all(
                          mobileButtonColor),
                    ),
                    child: new Text('Mobile'),
                    onPressed: () {
                      BlocProvider.of<LogInBloc>(context)
                          .add(MobileLogInButtonEvent());
                    },
                  ),
                ),
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          FlutterFlowTheme.of(context)
                              .axisRubyColor),
                      backgroundColor: MaterialStateProperty.all(
                          customerIdButtonColor),
                    ),
                    child: Text('CustomerId'),
                    onPressed: () {
                      BlocProvider.of<LogInBloc>(context)
                          .add(CustomerIdLogInButtonEvent());
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Are you a new user?", style: FlutterFlowTheme.of(context).bodyText2, ),
                  TextButton(onPressed: (){
                    BlocProvider.of<LogInBloc>(context).add(RegisterButtonEvent());
                    // BlocProvider.of<LogInBloc>(context).add(MobileLogInEvent());
                  }, child: Text("Register", style: TextStyle(color: FlutterFlowTheme.of(context).axisRubyColor, fontSize: 18, fontWeight: FontWeight.w600),))

                ],
              )
          ),
        ],
      ),
    );
  }
}


