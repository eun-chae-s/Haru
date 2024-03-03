import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:haru/app/modules/home/view/home_view.dart';

// Login page => stateless
// Error message, disabled login button => stateful
// https://mobikul.com/make-login-page-design-with-flutter/
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static void logSignIn() {}

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        backgroundColor: backgroundColor,
        child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(loginTitle,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'AbhayaLibre')),
                  SizedBox(
                    height: 100,
                  ),
                  LoginSection(),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    question,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'AbhayaLibre',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CupertinoButton(
                      onPressed: logSignIn,
                      color: buttonColor,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        signIn,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: 'AbhayaLibre',
                        ),
                      )),
                ],
              ),
            )));
  }
}

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            IDTextBox(),
            SizedBox(
              height: 7,
            ),
            PasswordTextBox()
          ],
        ),
        const SizedBox(
          width: 7,
        ),
        CupertinoButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const HomePage()),
              );
            },
            color: buttonColor,
            padding: const EdgeInsets.all(20),
            child: const Text(
              enter,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'AbhayaLibre',
              ),
            )),
      ],
    ));
  }
}

class IDTextBox extends StatelessWidget {
  const IDTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 230,
        child: CupertinoTextField(
          textDirection: TextDirection.ltr,
          placeholder: "Enter your ID",
          padding: EdgeInsets.all(10),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'AbhayaLibre',
          ),
        ));
  }
}

class PasswordTextBox extends StatelessWidget {
  const PasswordTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 230,
        child: CupertinoTextField(
          textDirection: TextDirection.ltr,
          placeholder: "Enter your password",
          padding: EdgeInsets.all(10),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'AbhayaLibre',
          ),
        ));
  }
}
