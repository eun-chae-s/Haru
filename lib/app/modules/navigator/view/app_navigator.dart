// REFERENCE: https://blog.logrocket.com/how-to-build-a-bottom-navigation-bar-in-flutter/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haru/app/modules/home/view/home_view.dart';
import 'package:haru/app/core/constant/constants.dart';

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = <Widget>[
      HomePage(),
      // SearchPage(),
      // BookmarksPage(),
      // ProfilePage(),
      // SettingsPage(),
    ];

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: backgroundColor,
        activeColor: Colors.white,
        inactiveColor: Colors.black,
        height: 50.0,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: const Icon(CupertinoIcons.home),
            ),
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: const Icon(CupertinoIcons.pencil_outline),
            ),
            tooltip: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: const Icon(CupertinoIcons.timer),
            ),
            tooltip: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: const Icon(CupertinoIcons.bookmark),
            ),
            tooltip: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: const Icon(CupertinoIcons.settings),
            ),
            tooltip: 'Settings',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            // Replace with your own page widgets
            return pages.elementAt(index);
          },
        );
      },
    );
  }
}
