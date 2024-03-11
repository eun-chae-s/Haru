// basics were generated by using the copilot
import 'package:flutter/cupertino.dart';
import 'package:haru/app/data/subject.dart';
import 'package:haru/app/data/task.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:flutter/material.dart';

class SubjectBox extends StatelessWidget {
  const SubjectBox({super.key, required this.subject});

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subject.name,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'AbhayaLibre',
                color: buttonColor,
              ),
            ),
            const Divider(
              height: 15,
              thickness: 3,
              indent: 10,
              endIndent: 0,
              color: buttonColor,
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: subject.tasks.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TaskItem(task: subject.tasks[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  const TaskItem({super.key, required this.task});

  final Task task;

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.task.isCompleted = !widget.task.isCompleted;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.task.name,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              fontFamily: 'DidactGothic',
            ),
          ),
          Icon(
            widget.task.isCompleted
                ? CupertinoIcons.checkmark_square_fill
                : CupertinoIcons.square,
            color: widget.task.isCompleted
                ? doneColor
                : CupertinoColors.inactiveGray,
          ),
        ],
      ),
    );
  }
}