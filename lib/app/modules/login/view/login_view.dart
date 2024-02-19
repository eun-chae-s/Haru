import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';

// Login page => stateless
// Error message, disabled login button => stateful
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: backgroundColor,
            width: double.maxFinite,
            height: double.maxFinite,
            child: const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(loginTitle,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'AbhayaLibre')),
                  IDTextBox(),
                ],
              ),
            )));
  }
}

class IDTextBox extends StatelessWidget {
  const IDTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 250,
        child: TextField(
            textDirection: TextDirection.ltr,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: userID)));
  }
}
