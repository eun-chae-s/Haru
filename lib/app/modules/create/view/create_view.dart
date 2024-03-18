// Basic template done by using Copilot
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haru/app/core/constant/constants.dart';
import 'package:haru/app/data/info_type.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: lightBackgroundColor,
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Header(),
              // _Fields(type: InfoType.subject),
              _Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          createPageHeader,
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w600,
              fontFamily: 'AbhayaLibre',
              color: buttonColor),
        ),
        Icon(CupertinoIcons.moon_stars_fill, color: buttonColor),
      ],
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields({super.key, required this.type});

  final InfoType type;

  @override
  Widget build(BuildContext context) {
    String section = '';
    String placeholderText = '';

    if (type == InfoType.subject) {
      section = subject;
      placeholderText = 'Enter the subject name';
    } else if (type == InfoType.deadline) {
      section = deadline;
      placeholderText = '';
    } else if (type == InfoType.goalQuestion) {
      section = goalQuestion;
      placeholderText = 'Write your goal here';
    }

    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     color: buttonColor,
        //     borderRadius: BorderRadius.circular(5),
        //   ),
        //   child: Text(
        //     section,
        //     style: const TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.w600,
        //         fontFamily: 'AbhayaLibre',
        //         color: Colors.white),
        //   ),
        // ),
        // CupertinoTextField(
        //   placeholder: placeholderText,
        // ),
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CupertinoButton(
          color: buttonColor,
          child: const Text(
            save,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'AbhayaLibre',
                fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            // Handle save button press
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CupertinoButton(
          color: Colors.white,
          child: const Text(
            cancel,
            style: TextStyle(
                color: buttonColor,
                fontFamily: 'AbhayaLibre',
                fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            // Handle cancel button press
          },
        ),
      ],
    );
  }
}
