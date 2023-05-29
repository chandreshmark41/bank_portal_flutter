import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_blocs.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_state.dart';
import 'package:bank_portal_flutter/theme/flutter_flow_theme.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repos/user_information_repo.dart';

class UserHomePage extends StatefulWidget{
  const UserHomePage({super.key});


  @override
  State<UserHomePage> createState() => _UserHomePageState();
}



class _UserHomePageState extends State<UserHomePage> {

  @override
  Widget build(BuildContext context) {
    //return Container();
    return BlocProvider(
      create: (context) => UserInformationBloc(RepositoryProvider.of<UserInformationRepository>(context)),
      child: Scaffold(
        appBar: AppBar(title: Center(child:Text("Welcome to Banking")),
        backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
        ),
        body: BlocConsumer<UserInformationBloc, UserInformationState>(
          listener: (context, state) {

          } ,
          builder: (context, state){
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  //height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(-0.05, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 0),
                          child: Container(
                            width: 1170.9,
                            height: 185.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.97, 0),
                                    child: Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                      child: Text(
                                        'Dear customer,',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.95, 0),
                                    child: Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                      child: Text(
                                        'Here are your recent transanctions eligible for easy EMI conversion.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.95, 0),
                                    child: Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                      child: Text(
                                        'Please select the EMI checkbox & tenure, and click on proceed',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.96, 0),
                                    child: Padding(
                                      padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                      child: Text(
                                        'Card Number is 4111XXXXXXXX9673',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 28, 20, 0),
                            child: Container(
                              width: 1032.6,
                              height: 244,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).axisMarronColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(-0.2, -0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    85, 0, 96, 0),
                                                child: Text(
                                                  'Merchant Name',
                                                  style: FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .lineColor,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  60, 0, 53, 0),
                                              child: Text(
                                                'Transcation Date',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  55, 0, 57, 0),
                                              child: Text(
                                                'Transcation Amount',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  18, 0, 0, 0),
                                              child: Text(
                                                'EMI',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 1030,
                                          height: 2,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(-0.2, -0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 156, 0),
                                                child: Text(
                                                  'CRED, MUMBAI, IN',
                                                  style: FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .lineColor,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  75, 0, 89, 0),
                                              child: Text(
                                                '2023-01-04',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  92, 0, 112, 0),
                                              child: Text(
                                                'Rs.101156.5',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme: CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                Color(0xFFF5F5F5),
                                              ),
                                              child: Checkbox(
                                                value: false,
                                                onChanged: (newValue) async {
                                                  // setState(() => _model.checkboxValue1 =
                                                  // newValue!);
                                                },
                                                activeColor: Color(0xFFF5F5F5),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 1030,
                                          height: 2,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(-0.2, -0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 230, 0),
                                                child: Text(
                                                  '10073240',
                                                  style: FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .lineColor,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  75, 0, 90, 0),
                                              child: Text(
                                                '2023-01-02',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  95, 0, 128, 0),
                                              child: Text(
                                                'Rs.51250',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme: CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                Color(0xFFF5F5F5),
                                              ),
                                              child: Checkbox(
                                                value: false,
                                                onChanged: (newValue) async {
                                                  // setState(() => _model.checkboxValue2 =
                                                  // newValue!);
                                                },
                                                activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                                checkColor: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 1030,
                                          height: 2,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(-0.2, -0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 165, 0),
                                                child: Text(
                                                  'CRED,MUMBAI,IN',
                                                  style: FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .lineColor,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  70, 0, 95, 0),
                                              child: Text(
                                                '2023-01-02',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  95, 0, 106, 0),
                                              child: Text(
                                                'Rs.49834.9',
                                                style: FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55,
                                              child: VerticalDivider(
                                                thickness: 2.5,
                                                indent: 10,
                                                endIndent: 10,
                                                color: FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme: CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                Color(0xFFF5F5F5),
                                              ),
                                              child: Checkbox(
                                                value:  false,
                                                onChanged: (newValue) async {
                                                  // setState(() => _model.checkboxValue3 =
                                                  // newValue!);
                                                },
                                                activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 1030,
                                          height: 2,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                                child: new Text('Proceed'),
                                onPressed: () {
                                  // BlocProvider.of<LogInBloc>(context)
                                  //     .add(CustomerIdLogInEvent());
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } ,
        ),
      )
    );
  }
}