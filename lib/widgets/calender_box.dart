import 'package:dashboard/widgets/event_row_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class CalenderBox extends StatefulWidget {
  const CalenderBox({Key? key}) : super(key: key);

  @override
  State<CalenderBox> createState() => _CalenderBoxState();
}

class _CalenderBoxState extends State<CalenderBox> {
  DateTime? _selectedDate;
  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {
      DateTime(2023, 03, 10): [
        Event(
          date: DateTime(2023, 03, 10),
          title: 'Event 1',
          dot: const EventDot(),
        ),
        Event(
          date: DateTime(2023, 03, 10),
          title: 'Event 2',
          dot: const EventDot(),
        ),
      ],
      DateTime(2023, 03, 05): [
        Event(
          date: DateTime(2023, 03, 05),
          title: 'Event 1',
          dot: const EventDot(),
        ),
      ],
      DateTime(2023, 03, 17): [
        Event(
          date: DateTime(2023, 03, 17),
          title: 'Event 1',
          dot: const EventDot(),
        ),
      ],
      DateTime(2023, 03, 27): [
        Event(
          date: DateTime(2023, 03, 27),
          title: 'Event 1',
          dot: const EventDot(),
        ),
      ],
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CalendarCarousel<Event>(
            height: SizeConfig.screenHeight! * 0.5,
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
            markedDatesMap: _markedDateMap,
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/fire.png',
                    width: SizeConfig.screenWidth! * 0.01,
                  ),
                  const Gap(5),
                  Text(
                    'Upcoming events',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.008,
                        color: Colors.white),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.5)),
                child: Container(
                  decoration: BoxDecoration(
                      color: darkBlack,
                      border: Border.all(width: 0, color: darkBlack),
                      borderRadius: BorderRadius.circular(7.5)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: const [
                      EventDataRow(),
                      EventDataRow(),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EventDot extends StatelessWidget {
  const EventDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2.5),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 5.0,
      width: 5.0,
    );
  }
}
