import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:haru/app/modules/login/view/login_view.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => const LoginPage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Container(
            color: backgroundColor,
            width: double.maxFinite,
            height: double.maxFinite,
            child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      appTitle,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'AbhayaLibre',
                          color: Colors.white),
                    ),
                    Text(
                      subTitle,
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'AbhayaLibre',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 450,
                    ),
                    Text(
                      patent,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'AbhayaLibre',
                          color: Colors.white),
                    )
                  ],
                ))));
  }
}
