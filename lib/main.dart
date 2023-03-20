import 'package:flutter/material.dart';
import 'package:flutter_login_app/pages/change_password_page.dart';
import 'package:flutter_login_app/pages/confirmation_page.dart';
import 'package:flutter_login_app/pages/forget_password_page.dart';
import 'package:flutter_login_app/pages/login_page.dart';
import 'package:flutter_login_app/pages/sign_up_page.dart';
import 'package:flutter_login_app/pages/successful_registered_page.dart';
import 'package:flutter_login_app/pages/SuccessPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/sign_up': (context) => SignUpPage(),
        '/forget_password': (context) => ResetPasswordPage(),
        '/successful_registered': (context) => SuccessfulRegisteredPage(),
        '/confirmation': (context) => ConfirmationPage(),
        '/change_password': (context) => ChangePasswordPage(),
        '/success_page': (context) => SuccessPage(
              message: '',
            ),
      },
    );
  }
}
