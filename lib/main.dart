import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_tracker_clone/constants/colors.dart';
import 'package:task_tracker_clone/constants/gaps.dart';
import 'package:task_tracker_clone/constants/sizes.dart';
import 'package:task_tracker_clone/ui/avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: eerieBlack,
          appBarTheme: const AppBarTheme(
            backgroundColor: eerieBlack,
          )),
      home: const TaskTrackerApp(),
    );
  }
}

class TaskTrackerApp extends StatelessWidget {
  const TaskTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Row(
          children: [
            Avatar(
              radius: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: Sizes.size32,
            ),
          ),
          Gaps.h8
        ],
      ),
      body: const Column(
        children: [
          Avatar(
            radius: 25,
          ),
          Avatar(
            radius: 45,
          ),
          Avatar(
            radius: 65,
          ),
        ],
      ),
    );
  }
}
