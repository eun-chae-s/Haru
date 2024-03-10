// can you make a Home Page with a header with saying "good morning", "good evening" based on current time?
import 'package:flutter/cupertino.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: lightBackgroundColor,
      child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Header(),
            ],
          )),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var currentTime = DateTime.now(); // add localization
    DateFormat dateFormat = DateFormat('MMMM dd, yyyy');
    String currentDate = dateFormat.format(currentTime);
    var hour = currentTime.hour;
    String greeting = '';
    String cheer = '';
    if (hour < 12) {
      greeting = 'Good Morning';
      cheer = 'Ready for Today?';
    } else if (hour < 17) {
      greeting = 'Good Afternoon';
      cheer = 'How has your day been?';
    } else {
      greeting = 'Good Evening';
      cheer = 'Keep going!';
    }

    return Container(
      height: 300,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            currentDate,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: CupertinoColors.white,
              fontFamily: 'AbhayaLibre',
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            greeting,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: CupertinoColors.white,
              fontFamily: 'AbhayaLibre',
            ),
          ),
          Text(
            cheer,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: CupertinoColors.white,
              fontFamily: 'AbhayaLibre',
            ),
          ),
        ],
      ),
    );
  }
}
