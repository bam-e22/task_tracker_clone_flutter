import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_tracker_clone/constants/colors.dart';
import 'package:task_tracker_clone/constants/date_time_ext.dart';
import 'package:task_tracker_clone/constants/gaps.dart';
import 'package:task_tracker_clone/constants/sizes.dart';

class Days extends StatefulWidget {
  const Days({super.key});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  DateTime today = DateTime.now();
  late DateTime selectedDay = today;

  void _selectDay(DateTime date) {
    setState(() {
      selectedDay = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${DateFormat('EEEE').format(selectedDay)} ${selectedDay.day}',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero, // Set this
                padding: EdgeInsets.zero, // and this
              ),
              onPressed: () {
                _selectDay(today);
              },
              child: Text(
                'TODAY',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Colors.white),
              ),
            ),
            Gaps.h4,
            Container(
              height: Sizes.size8,
              width: Sizes.size8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.fandango,
              ),
            ),
            Gaps.h4,
            Expanded(
              child: SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = today.nextDay; i < (today.nextDay + 10); i++)
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero, // Set this
                          padding: EdgeInsets.zero, // and this
                        ),
                        onPressed: () {
                          _selectDay(today.add(Duration(days: i - today.day)));
                        },
                        child: Text(
                          (i % today.lastDayOfMonth).toString(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
