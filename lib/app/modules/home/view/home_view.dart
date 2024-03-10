// can you make a Home Page with a header with saying "good morning", "good evening" based on current time?
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:haru/app/core/constant/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now();
    final hour = currentTime.hour;
    String greeting = '';
    if (hour < 12) {
      greeting = 'Good Morning';
    } else if (hour < 17) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }
    
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          greeting,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
