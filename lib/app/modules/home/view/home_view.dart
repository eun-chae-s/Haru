import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Haru';
    const String subTitle = 'keep track of your day';
    const Color backgroundColor = Color(0xFF7B91BC);
    return SizedBox.expand(
        child: Container(
      color: backgroundColor,
      child: const Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(appTitle,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                )),
            Text(
              subTitle,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
            )
          ]),
    ));
  }
}
