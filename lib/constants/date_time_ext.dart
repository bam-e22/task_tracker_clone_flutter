extension DateTimeExtension on DateTime {
  int get lastDayOfMonth => DateTime(year, month + 1, 0).day;
  int get nextDay => add(Duration(days: 1)).day;
}
