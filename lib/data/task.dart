import 'package:flutter/material.dart';
import 'package:task_tracker_clone/constants/colors.dart';

class Task {
  Task({
    required this.title,
    required this.person,
    required this.color,
    required this.startTime,
    required this.endTime,
  });

  final String title;
  final List<String> person;
  final Color color;
  final String startTime;
  final String endTime;
}

List<Task> tasks = [
  Task(
      title: "Design meeting",
      person: ["alex", "helena", "nana"],
      color: MyColors.lemonYellow,
      startTime: "11:30",
      endTime: "12:20"),
  Task(
      title: "Daily project",
      person: ["me", "richard", "ciry", "alex", "helena", "nana", "sam"],
      color: MyColors.amethyst,
      startTime: "12:35",
      endTime: "14:10"),
  Task(
      title: "weekly planning",
      person: ["den", "nana", "mark"],
      color: MyColors.inchworm,
      startTime: "15:00",
      endTime: "16:30"),
  Task(
      title: "Daily meeting",
      person: ["james", "sam", "nana", "john", "nathan"],
      color: MyColors.white,
      startTime: "11:30",
      endTime: "12:20"),
];
