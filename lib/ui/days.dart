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
  final DateTime _today = DateTime.now();
  late DateTime _selectedDay = _today;
  final ScrollController _scrollController = ScrollController();

  void _selectDay(DateTime date) {
    setState(() {
      _selectedDay = date;
    });
  }

  void _scrollToFirst() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${DateFormat('EEEE').format(_selectedDay)} ${_selectedDay.day}',
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
                _selectDay(_today);
                _scrollToFirst();
              },
              child: Text(
                'TODAY',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white.withOpacity(
                        _today == _selectedDay ? 1.0 : 0.4,
                      ),
                    ),
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
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = _today.nextDay; i < (_today.nextDay + 10); i++)
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero, // Set this
                          padding: EdgeInsets.zero, // and this
                        ),
                        onPressed: () {
                          _selectDay(
                            _today.add(Duration(days: i - _today.day)),
                          );
                        },
                        child: Text(
                          (i % _today.lastDayOfMonth).toString(),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: Colors.white.withOpacity(
                                  (i % _today.lastDayOfMonth) ==
                                          _selectedDay.day
                                      ? 1.0
                                      : 0.4,
                                ),
                              ),
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
