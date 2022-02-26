import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/screens/signup/signup.dart';
import 'package:flutter_auth/screens/welcome/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to EDUCUA",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            // SizedBox(
            //   height: 10,
            // ),
            RoundedButton(
                text: "SIGNUP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
