import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:table_calendar/table_calendar.dart';

import '../../core/constant/colors.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({
    this.radius,
    super.key,
  });
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(radius ?? 50.r),
      ),
      child: TableCalendar(
        firstDay: DateTime(1990, 1, 1),
        lastDay: DateTime(2030, 12, 31),
        focusedDay: DateTime.now(),
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        weekendDays: const [DateTime.saturday, DateTime.sunday],
        calendarStyle: const CalendarStyle(
          weekendTextStyle: TextStyle(color: Colors.blue),
          holidayTextStyle: TextStyle(color: Colors.red),
          defaultTextStyle: TextStyle(color: Colors.white),
        ),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleTextStyle: TextStyle(color: Colors.white),
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
