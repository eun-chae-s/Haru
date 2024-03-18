// can you make a Home Page with a header with saying "good morning", "good evening" based on current time?
import 'package:flutter/cupertino.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:intl/intl.dart';
import 'package:haru/app/global/widgets/subject_box.dart';
import 'package:haru/app/data/subject.dart';
import 'package:haru/app/data/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: lightBackgroundColor,
      child: Column(
        children: <Widget>[
          const Header(),
          Expanded(child: TodoList()),
        ],
      ),
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
      padding: const EdgeInsets.only(
          top: 50.0, left: 30.0, right: 30.0, bottom: 0.0),
      margin: const EdgeInsets.only(bottom: 0.0),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            currentDate,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.white,
              fontFamily: 'AbhayaLibre',
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            greeting,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
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

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Subject> subjects = [
      Subject(
        name: 'Math',
        tasks: [
          Task(name: 'Algebra', isCompleted: true),
          Task(name: 'Geometry'),
          Task(name: 'Calculus'),
        ],
      ),
      Subject(
        name: 'Science',
        tasks: [
          Task(name: 'Physics'),
          Task(name: 'Chemistry'),
          Task(name: 'Biology', isCompleted: true),
        ],
      ),
      Subject(
        name: 'History',
        tasks: [
          Task(name: 'World History'),
          Task(name: 'American History'),
          Task(name: 'European History'),
        ],
      ),
    ];

    return SingleChildScrollView(
        child: Column(
      children:
          subjects.map((subject) => SubjectBox(subject: subject)).toList(),
    ));
  }
}
