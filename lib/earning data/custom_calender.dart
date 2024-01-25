import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../horizontial_calender/src/calendar_timeline.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        CalendarTimeline(
          showYears: true,
          initialDate: _selectedDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
          onDateSelected: (date) => setState(() => _selectedDate = date),
          leftMargin: 20,
          monthColor: Colors.black,
          dayColor: Colors.black,
          dayNameColor: const Color(0xFF333A47),
          activeDayColor: Colors.black,
          activeBackgroundDayColor: Colors.redAccent[100],
          dotsColor: const Color(0xFF333A47),
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en',
        ),
      ]),
    );
  }
}
