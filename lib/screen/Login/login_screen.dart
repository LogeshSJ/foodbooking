import 'package:flutter/material.dart';
import 'package:foodbooking/responsive.dart';
import 'package:foodbooking/screen/Login/login_form.dart';
import 'package:foodbooking/screen/Login/login_screen_top_image.dart';
// import 'package:loginpage/responsive.dart';
// import 'package:loginpage/screen/Login/login_form.dart';
// import 'package:loginpage/screen/Login/login_screen_top_image.dart';

import '../../background.dart';
// import 'components/login_form.dart';
// import 'components/login_screen_top_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: LoginScreenTopImage(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
