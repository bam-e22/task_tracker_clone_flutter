import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_tracker_clone/constants/gaps.dart';
import 'package:task_tracker_clone/constants/sizes.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.title,
    required this.names,
    required this.color,
    this.startTime = "11:30",
    this.endTime = "12:20",
  });

  final String title;
  final List<String> names;
  final Color color;
  final String startTime;
  final String endTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size24), color: color),
      child: Padding(
        padding: EdgeInsets.all(Sizes.size18),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      startTime.split(':').first,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                    ),
                    Text(
                      startTime.split(':').last,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.0,
                          ),
                    ),
                    const Text(
                      '|',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: Sizes.size28,
                        height: 1.0,
                      ),
                    ),
                    Text(
                      endTime.split(':').first,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                    ),
                    Text(
                      endTime.split(':').last,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.0,
                          ),
                    ),
                  ],
                ),
                Gaps.h10,
                Expanded(
                  child: Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          height: 0.9,
                          fontWeight: FontWeight.w500,
                        ),
                    maxLines: 2,
                  ),
                )
              ],
            ),
            Gaps.v10,
            SizedBox(
              height: 30,
              child: ListView.separated(
                padding: EdgeInsets.only(left: Sizes.size44),
                separatorBuilder: (context, index) => Gaps.h20,
                itemCount: min(names.length, 4),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index < 3) {
                    return Text(
                      names[index].toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black38),
                    );
                  } else {
                    return Text(
                      '+${names.length - 3}',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black38),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
