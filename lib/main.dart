import 'package:bank_portal_flutter/blocs/log_in_bloc/log_in_blocs.dart';
import 'package:bank_portal_flutter/pages/log_in/log_in_page.dart';
import 'package:bank_portal_flutter/pages/otp_verification/otp_verification_page.dart';
import 'package:bank_portal_flutter/pages/user_home_page.dart';
import 'package:bank_portal_flutter/pages/user_registration/user_registration_page.dart';
import 'package:bank_portal_flutter/repos/user_information_repo.dart';
import 'package:bank_portal_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/':(context) =>  const LogInPage(title: 'Log In'),
        '/otp_verification_page':(context) => const OtpVerificationPage(),
        '/user_information_page': (context) =>
        RepositoryProvider(create: (context) => UserInformationRepository(),
          child: const UserRegistrationPage(),
        ),

        '/user_home_page':(context) => RepositoryProvider(create: (context) => UserInformationRepository(),
          child: const UserHomePage(),
        ),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: const LogInPage(title: 'Flutter Bloc Banking'),
    );
  }
}

