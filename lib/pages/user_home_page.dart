import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_blocs.dart';
import 'package:bank_portal_flutter/blocs/user_information_bloc/user_information_state.dart';
import 'package:bank_portal_flutter/theme/flutter_flow_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      create: (context) => UserInformationBloc(),
      child: Scaffold(
        appBar: AppBar(title: Center(child:Text("Welcome to Banking")),
        backgroundColor: FlutterFlowTheme.of(context).axisMarronColor,
        ),
        body: BlocConsumer<UserInformationBloc, UserInformationState>(
          listener: (context, state) {

          } ,
          builder: (context, state){
            return Center( child: Container(
              child: Text("Home Page"),
            ) );
          } ,
        ),
      )
    );
  }
}