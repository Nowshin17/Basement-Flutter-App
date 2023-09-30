import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/custom_AppBar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();


  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Calender Screen",
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12)),
              child: TableCalendar(
                firstDay:
                    DateTime(2015, DateTime.now().month, DateTime.now().day),
                lastDay: DateTime(DateTime.now().year + 5, DateTime.now().month,
                    DateTime.now().day),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                calendarFormat: CalendarFormat.month,
                startingDayOfWeek: StartingDayOfWeek.saturday,
                holidayPredicate: (day) {
                  return day.weekday == DateTime.friday;
                },
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: false,
                  markersMaxCount: 3,
                  holidayTextStyle: const TextStyle(color: Colors.red),
                  holidayDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  todayDecoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.5),
                      shape: BoxShape.circle),
                  markerDecoration: BoxDecoration(
                      color: Colors.teal[700], shape: BoxShape.circle),
                ),
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        _selectedDay;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _selectedDay = focusedDay;
                    _focusedDay =
                        _selectedDay;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
