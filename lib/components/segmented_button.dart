import 'package:flutter/material.dart';

enum Calendar { day, week, month, year }

class M3SegmentedButton extends StatefulWidget {
  const M3SegmentedButton({super.key});

  @override
  State<M3SegmentedButton> createState() => _M3SegmentedButtonState();
}

class _M3SegmentedButtonState extends State<M3SegmentedButton> {
  Calendar _calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('day'),
          icon: Icon(Icons.calendar_view_day),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Text('week'),
          icon: Icon(Icons.calendar_view_week),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Text('month'),
          icon: Icon(Icons.calendar_view_month),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.year,
          label: Text('year'),
          icon: Icon(Icons.calendar_today),
        ),
      ],
      selected: <Calendar>{_calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          _calendarView = newSelection.first;
        });
      },
    );
  }
}
