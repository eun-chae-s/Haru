import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ),
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AbhayaLibre',
                  ),
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
                  ),
                )
              ],
            )));
  }
}
