import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class CalenderBox extends StatefulWidget {
  const CalenderBox({Key? key}) : super(key: key);

  @override
  State<CalenderBox> createState() => _CalenderBoxState();
}

class _CalenderBoxState extends State<CalenderBox> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: CalendarCarousel<Event>(
        todayBorderColor: Colors.green,
        todayButtonColor: Colors.green,
        todayTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white,
        ),
        weekdayTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white,
        ),
        prevDaysTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white60,
        ),
        daysTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white,
        ),
        weekendTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white30,
        ),
        nextDaysTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white60,
        ),
        headerTitleTouchable: true,
        onDayPressed: (date, events) {
          setState(() => _selectedDate = date);
        },
        minSelectedDate: _selectedDate?.subtract(const Duration(days: 365)),
        maxSelectedDate: _selectedDate?.add(const Duration(days: 365)),
        selectedDayTextStyle: TextStyle(
          fontSize: SizeConfig.screenWidth! * 0.01,
          color: Colors.white,
        ),
        selectedDayBorderColor: Colors.indigo,
        selectedDayButtonColor: Colors.indigo,
        firstDayOfWeek: 0,
        selectedDateTime: _selectedDate,
        showHeader: true,
        headerTextStyle: TextStyle(
            fontSize: SizeConfig.screenWidth! * 0.01,
            color: Colors.white,
            fontWeight: FontWeight.w600),
        headerMargin: const EdgeInsets.only(top: 10, bottom: 20),
        weekDayMargin: const EdgeInsets.only(bottom: 10.0),
        iconColor: Colors.green,
      ),
    );
  }
}
