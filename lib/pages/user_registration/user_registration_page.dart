import 'package:bank_portal_flutter/blocs/common_methods/get_city_values.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_blocs.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/user_information_bloc/user_information_state.dart';
import '../../theme/flutter_flow_theme.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserRegistrationPage extends StatefulWidget {
  const UserRegistrationPage({super.key});

  @override
  State<UserRegistrationPage> createState() => _UserRegistrationPageState();
}

class _UserRegistrationPageState extends State<UserRegistrationPage> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController mobileNumberController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  late TextEditingController pinCodeController;
  late TextEditingController stateController;
  late TextEditingController cityController;

  late String pageTitle;
  late String pageNumber;
  late String _selectedState = "Select State";
  late String _selectedCity = "Select City";
  late List<String> cities;

  final _personalInformationFormkey = GlobalKey<FormState>();
  final _addressInformationFormkey = GlobalKey<FormState>();

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    mobileNumberController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    pinCodeController = TextEditingController();
    stateController = TextEditingController();
    cityController = TextEditingController();

    _selectedCity = "";
    _selectedState = "";
    cities = ['Please select your city'];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => UserInformationBloc(),
      child: Scaffold(
          appBar: AppBar(
            //automaticallyImplyLeading: false,
            title: const Center(
              child: Text(
                'User Information',
                textAlign: TextAlign.center,
              ),
            ),
            backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
          ),
          body: BlocConsumer<UserInformationBloc, UserInformationState>(
            listener: (context, state) {

              if(state is BackToLogInPageState) {
                Navigator.pushNamed(context, '/');
              }
              // if(state is PersoanlInformationState){
              //
              //   pageTitle = state.props.first.toString();
              //   // print(pageTitle);
              // }
            },
            builder: (context, state) {
              //print(state.props.first);

              if (state is PersonalInformationState) {
                pageTitle = state.pageTitle;
                pageNumber = state.pageNumber;
                return Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  width: double.infinity,
                  //color: Colors.grey,
                  alignment: Alignment.center,
                  child:Form(
                    key: _personalInformationFormkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Generated code for this Row Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).axisRubyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Personal',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).axisRubyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Address',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).lineColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Review',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).lineColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$pageTitle",
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 5, 0),
                                child: Text("Page $pageNumber/3"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Wrap(
                          //crossAxisAlignment: WrapCrossAlignment.center,
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
                                      'First Name:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(
                                        controller: firstNameController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText:
                                          'John is first name in John Jacobs',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                              mask: 'AAAAAAAAAAAAAAAAAAAAA')
                                        ],
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'first name is required';
                                          }
                                          if (val.length < 2) {
                                            return 'first name should have atleast 2 characters';
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
                                    alignment: Alignment.lerp(Alignment(0, -0.5),
                                        Alignment(0, -0.5), 1),
                                    height: 70,
                                    width: 100,
                                    child: Text(
                                      'Last Name:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(
                                        controller: lastNameController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText:
                                          'Jacobs is last name in John Jacobs',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                              mask:
                                              'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
                                        ],
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'last name is required';
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
                        Wrap(
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
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(
                                        controller: mobileNumberController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText:
                                          'Please enter 10 digit mobile number',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                            return 'mobile number is required';
                                          }
                                          if (val.length < 10) {
                                            return 'mobile number is shorter';
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
                                    alignment: Alignment.lerp(Alignment(0, -0.5),
                                        Alignment(0, -0.5), 1),
                                    height: 70,
                                    width: 100,
                                    child: Text(
                                      'Email:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(

                                        controller: emailController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.emailAddress,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText: 'abcd@xyz.com',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                        validator: (val) {
                                          bool isValidEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(val!);

                                          if(isValidEmail) {
                                            return null;
                                          }
                                          if(val == null || val.isEmpty) {
                                            return 'Email is required';
                                          }
                                          return "Email is not valid";
                                        }
                                      //validator: _phoneTextFieldControllerValidator.asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisRubyColor),
                                  backgroundColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisGreyColor),
                                ),
                                child: new Text('Back'),
                                onPressed: () {
                                  BlocProvider.of<UserInformationBloc>(context).add(BackToLogInPageEvent());
                                  // BlocProvider.of<LogInBloc>(context)
                                  //     .add(MobileLogInEvent());
                                },
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisRubyColor),
                                  backgroundColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisGreyColor),
                                ),
                                child: new Text('Next'),
                                onPressed: () {
                                  BlocProvider.of<UserInformationBloc>(context)
                                      .add(NextButtonPersonalInformationEvent(
                                      state.data));
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )


                );
              }

              if (state is AddressInformationState) {
                pageTitle = state.pageTitle;
                pageNumber = state.pageNumber;
                return Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  width: double.infinity,
                  //color: Colors.grey,
                  alignment: Alignment.center,
                  child: Form(
                    key: _addressInformationFormkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        /////////////// Progress bar //////////////////
                        // Generated code for this Row Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).axisRubyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Personal',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).axisRubyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).axisRubyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Address',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).axisRubyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Review',
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.15,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).lineColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///////////////////////////////////////////////

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$pageTitle",
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 5, 0),
                                child: Text("Page $pageNumber/3"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          //crossAxisAlignment: WrapCrossAlignment.center,
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
                                      'House/Street/area:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(
                                        controller: addressController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText: '785, 23rd A cross,Hsr',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                        validator: (val) {
                                          if (val!.isEmpty ) {
                                            return 'Address is required';
                                          }
                                          if (val.length < 8) {
                                            return 'Address is very short';
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
                                    alignment: Alignment.lerp(Alignment(0, -0.5),
                                        Alignment(0, -0.5), 1),
                                    height: 70,
                                    width: 100,
                                    child: Text(
                                      'State:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: DropdownButtonFormField(
                                      autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                      //value: DropdownMenuItem(value: _selectedState, child: Text('$_selectedState'),),
                                      alignment: Alignment.center,
                                      focusColor: Colors.transparent,
                                      style:
                                      FlutterFlowTheme.of(context).bodyText2,
                                      // dropdownColor: Colors.transparent,
                                      // focusColor: Colors.transparent,
                                      decoration: InputDecoration(
                                        //fillColor: Colors.yellowAccent,
                                        border: const OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 5),

                                        //labelText: 'Mobile Number',
                                        // hintText:
                                        // '6 digit area code',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        focusColor: Colors.yellowAccent,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            //color:FlutterFlowTheme.of(context).secondaryText,
                                              color: FlutterFlowTheme.of(context)
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
                                      hint: Text("Select State"),
                                      value: state.data['selected_state']
                                          ?.elementAt(0),
                                      items: state.data['states']
                                          ?.map((e) => DropdownMenuItem(
                                          value: e, child: Text(e)))
                                          .toList(),
                                      validator: (value) {
                                        if (value!.isEmpty ||
                                            value == "Select State") {
                                          return "Please select State";
                                        }
                                        return null;
                                      },
                                      onChanged: (value) {
                                        BlocProvider.of<UserInformationBloc>(
                                            context)
                                            .add(SelectStateValueEvent(
                                            value!, state.data));
                                        setState(() {
                                          print("Set state has been called");
                                        });
                                        //state.data['selected_state'] = [value!];
                                        // setState(()   {
                                        //   _selectedState = value!;
                                        //   BlocProvider.of<UserInformationBloc>(context)
                                        //       .add(SelectStateValue(_selectedState));
                                        //
                                        // });
                                      },
                                      //onSaved: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Wrap(
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
                                      'City:',
                                      textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: DropdownButtonFormField(
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        //value: _selectedCity,
                                        alignment: Alignment.center,
                                        focusColor: Colors.transparent,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        // dropdownColor: Colors.transparent,
                                        // focusColor: Colors.transparent,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          // hintText:
                                          // '6 digit area code',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          focusColor: Colors.yellowAccent,
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
                                        hint: Text("Select City"),
                                        value: state.data["selected_city"]
                                            ?.elementAt(0),
                                        items: state.data["cities"]
                                            ?.map((e) => DropdownMenuItem<String>(
                                            value: e, child: Text(e)))
                                            .toList(),
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              value ==
                                                  "                    Select City") {
                                            return "Please select City";
                                          }
                                          return null;
                                        },
                                        onChanged: (value) {
                                          BlocProvider.of<UserInformationBloc>(
                                              context)
                                              .add(SelectCityValueEvent(
                                              value!, state.data));
                                          // setState(() {
                                          //   _selectedCity = value!;
                                          // });
                                        },
                                      )),
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
                                    alignment: Alignment.lerp(Alignment(0, -0.5),
                                        Alignment(0, -0.5), 1),
                                    height: 70,
                                    width: 100,
                                    child: Text(
                                      'Pincode:',
                                      textAlign: TextAlign.start,
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
                                    width: 250,
                                    child: TextFormField(
                                        controller: pinCodeController,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.emailAddress,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        //controller: nameController,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          hintText: '6 digit area code',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          focusColor: Colors.yellowAccent,
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
                                          MaskTextInputFormatter(mask: '######')
                                        ],
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Pincode is required';
                                          }
                                          if (val.length < 6) {
                                            return 'Pincode is less than 6 digits';
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisRubyColor),
                                  backgroundColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisGreyColor),
                                ),
                                child: new Text('Back'),
                                onPressed: () {
                                  BlocProvider.of<UserInformationBloc>(context)
                                      .add(BackButtonAddressInformationEvent(
                                      state.data));
                                },
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisRubyColor),
                                  backgroundColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context).axisGreyColor),
                                ),
                                child: new Text('Next'),
                                onPressed: () {
                                  BlocProvider.of<UserInformationBloc>(context)
                                      .add(NextButtonAddressInformationEvent(
                                      state.data));
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),


                );
              }

              if (state is ReviewInformationState) {
                pageTitle = state.pageTitle;
                pageNumber = state.pageNumber;
                return
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      width: double.infinity,
                      //color: Colors.grey,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////////////////////////////// Progress Bar /////////
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).axisRubyColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Personal',
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.15,
                                        height: 2,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).axisRubyColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Address',
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.15,
                                        height: 2,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).axisRubyColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Review',
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.15,
                                        height: 2,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).axisRubyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).axisRubyColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          /////////////////////////////////////////////////////


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$pageTitle",
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 5, 0),
                                  child: Text("Page $pageNumber/3"))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            //crossAxisAlignment: WrapCrossAlignment.center,
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
                                        'First Name:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: firstNameController,
                                        textAlign: TextAlign.center,
                                        style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
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
                                      alignment: Alignment.lerp(Alignment(0, -0.5),
                                          Alignment(0, -0.5), 1),
                                      height: 70,
                                      width: 100,
                                      child: Text(
                                        'Last Name:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: lastNameController,
                                        textAlign: TextAlign.center,
                                        style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Wrap(
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
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: mobileNumberController,
                                        textAlign: TextAlign.center,
                                        style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
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
                                      alignment: Alignment.lerp(Alignment(0, -0.5),
                                          Alignment(0, -0.5), 1),
                                      height: 70,
                                      width: 100,
                                      child: Text(
                                        'Email:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: emailController,
                                        textAlign: TextAlign.center,
                                        style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          /////////////////////////////// Address Information ///////////////
                          Wrap(
                            //crossAxisAlignment: WrapCrossAlignment.center,
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
                                        'House/Street/area:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: addressController,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
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
                                      alignment: Alignment.lerp(Alignment(0, -0.5),
                                          Alignment(0, -0.5), 1),
                                      height: 70,
                                      width: 100,
                                      child: Text(
                                        'State:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: DropdownButtonFormField(
                                        enableFeedback: false,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        //value: DropdownMenuItem(value: _selectedState, child: Text('$_selectedState'),),
                                        alignment: Alignment.center,
                                        focusColor: Colors.transparent,
                                        style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                        // dropdownColor: Colors.transparent,
                                        // focusColor: Colors.transparent,
                                        decoration: InputDecoration(
                                          //fillColor: Colors.yellowAccent,
                                          border: const OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),

                                          //labelText: 'Mobile Number',
                                          // hintText:
                                          // '6 digit area code',
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          focusColor: Colors.yellowAccent,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              //color:FlutterFlowTheme.of(context).secondaryText,
                                                color: FlutterFlowTheme.of(context)
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
                                        hint: Text("Select State"),
                                        value: state.data['selected_state']
                                            ?.elementAt(0),
                                        items: state.data['states']
                                            ?.map((e) => DropdownMenuItem(
                                            value: e, child: Text(e)))
                                            .toList(),
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              value == "Select State") {
                                            return "Please select State";
                                          }
                                          return null;
                                        },
                                        onChanged: null,
                                        //onSaved: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Wrap(
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
                                        'City:',
                                        textAlign: TextAlign.start,
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
                                        width: 250,
                                        child: DropdownButtonFormField(
                                          autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                          //value: _selectedCity,
                                          alignment: Alignment.center,
                                          focusColor: Colors.transparent,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                          // dropdownColor: Colors.transparent,
                                          // focusColor: Colors.transparent,
                                          decoration: InputDecoration(
                                            //fillColor: Colors.yellowAccent,
                                            border: const OutlineInputBorder(),
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),

                                            //labelText: 'Mobile Number',
                                            // hintText:
                                            // '6 digit area code',
                                            hintStyle: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            focusColor: Colors.yellowAccent,
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
                                          hint: Text("Select City"),
                                          value: state.data["selected_city"]
                                              ?.elementAt(0),
                                          items: state.data["cities"]
                                              ?.map((e) => DropdownMenuItem<String>(
                                              value: e, child: Text(e)))
                                              .toList(),
                                          validator: (value) {
                                            if (value!.isEmpty ||
                                                value ==
                                                    "                    Select City") {
                                              return "Please select City";
                                            }
                                            return null;
                                          },
                                          onChanged: null,
                                        )),
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
                                      alignment: Alignment.lerp(Alignment(0, -0.5),
                                          Alignment(0, -0.5), 1),
                                      height: 70,
                                      width: 100,
                                      child: Text(
                                        'Pincode:',
                                        textAlign: TextAlign.start,
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
                                      width: 250,
                                      child: TextFormField(
                                        enabled: false,
                                        controller: pinCodeController,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,

                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ////////////////////////////////////////////////////////////////////

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 40,
                                padding: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                        FlutterFlowTheme.of(context).axisRubyColor),
                                    backgroundColor: MaterialStateProperty.all(
                                        FlutterFlowTheme.of(context).axisGreyColor),
                                  ),
                                  child: new Text('Back'),
                                  onPressed: () {
                                    BlocProvider.of<UserInformationBloc>(context)
                                        .add(BackButtonReviewInformationEvent(
                                        state.data));
                                  },
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                padding: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                        FlutterFlowTheme.of(context).axisRubyColor),
                                    backgroundColor: MaterialStateProperty.all(
                                        FlutterFlowTheme.of(context).axisGreyColor),
                                  ),
                                  child: new Text('Submit'),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      isDismissible: false,
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      // builder: (BuildContext context) {
                                      //
                                      //   return BlocProvider.value(
                                      //     value: BlocProvider.of<UserInformationBloc>(context),
                                      //   child:Container(
                                      //     height: double.infinity,
                                      //
                                      //     alignment: Alignment.center,
                                      //     //color:
                                      //     child: Container(
                                      //       margin: EdgeInsets.all(10),
                                      //       height: 200,
                                      //       width: 400,
                                      //
                                      //       decoration:  BoxDecoration(
                                      //         color: FlutterFlowTheme.of(context).primaryBackground,
                                      //         borderRadius: BorderRadius.circular(10.0),
                                      //       ),
                                      //       //color: Colors.,
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.center,
                                      //         mainAxisSize: MainAxisSize.min,
                                      //         children: <Widget>[
                                      //           Icon(Icons.assignment_turned_in, size: 42, color: FlutterFlowTheme.of(context).greenValidationColor,),
                                      //           SizedBox(
                                      //             height: 10,
                                      //           ),
                                      //           Text('Account has been created!', style: FlutterFlowTheme.of(context).title3),
                                      //           SizedBox(
                                      //             height: 20,
                                      //           ),
                                      //           Container(
                                      //             width: 120,
                                      //             height: 40,
                                      //             child: ElevatedButton(
                                      //               style: ButtonStyle(
                                      //                 overlayColor:
                                      //                 MaterialStateProperty.all(
                                      //                     FlutterFlowTheme.of(context)
                                      //                         .axisRubyColor),
                                      //                 backgroundColor:
                                      //                 MaterialStateProperty.all(
                                      //                     FlutterFlowTheme.of(context)
                                      //                         .axisGreyColor),
                                      //               ),
                                      //               child: Text('Back To LogIn'),
                                      //               onPressed: () {
                                      //                 BlocProvider.of<UserInformationBloc>(context).add(BackToLogInPageEvent());
                                      //                 Navigator.pop(context);
                                      //                 // BlocProvider.of<LogInBloc>(context)//     .add(CustomerIdLogInEvent());
                                      //               },
                                      //             ),
                                      //           ),
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      //   );
                                      // },
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: double.infinity,

                                          alignment: Alignment.center,
                                          //color:
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            height: 200,
                                            width: 400,

                                            decoration:  BoxDecoration(
                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            //color: Colors.,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(Icons.assignment_turned_in, size: 42, color: FlutterFlowTheme.of(context).greenValidationColor,),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Account has been created!', style: FlutterFlowTheme.of(context).title3),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
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
                                                    child: Text('Back To LogIn'),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/');
                                                      //Navigator.pop(context);
                                                      // BlocProvider.of<LogInBloc>(context)//     .add(CustomerIdLogInEvent());
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );

                                    // BlocProvider.of<UserInformationBloc>(context)
                                    //     .add(NextButtonPersonalInformationEvent(state.data));
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );

              }
              return Text("No state");
            },
          )),
    );
  }
}
