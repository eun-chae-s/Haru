// can you make a Home Page with a header with saying "good morning", "good evening" based on current time?
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // a header with saying greeting based on the current time?

      // a bottom navigation bar with 3 items: home, calendar, and settings
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  return const Center(
                    child: Text('Home'),
                  );
                case 1:
                  return const Center(
                    child: Text('Calendar'),
                  );
                case 2:
                  return const Center(
                    child: Text('Settings'),
                  );
                default:
                  return const Center(
                    child: Text('Home'),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
