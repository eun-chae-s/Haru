import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'HARU:';
    const String subTitle = '하루하루 의미있는 배움의 시간';
    const String patent = '@rachae';
    const Color backgroundColor = Color(0xFF7B91BC);
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
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(
                  height: 450,
                ),
                Text(
                  patent,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                )
              ],
            )));
  }
}
