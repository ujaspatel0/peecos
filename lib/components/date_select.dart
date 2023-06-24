import 'package:flutter/material.dart';

class DateSelect extends StatelessWidget {
  const DateSelect({Key? key, required this.dateTime, required this.onChanged}) : super(key: key);

  final DateTime dateTime;
  final Function(DateTime newValue) onChanged;

  Widget _buildYearSelect() {
    final now = DateTime.now();
    final years = [now.year, now.year + 1];

    return DropdownButton<int>(
        value: dateTime.year,
        onChanged: (int? year) {
          onChanged(DateTime(year!, dateTime.month, dateTime.day));
        },
        items: years.map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
    );
  }

  Widget _buildMonthSelect() {
    final months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

    return DropdownButton<int>(
      value: dateTime.month,
      onChanged: (int? month) {
        onChanged(DateTime(dateTime.year, month!, dateTime.day));
      },
      items: months.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }

  Widget _buildDaySelect() {
    final days = <int>[];
    for (int i = 1; i <= 31; i++) {
      days.add(i);
    }

    return DropdownButton<int>(
      value: dateTime.day,
      onChanged: (int? day) {
        onChanged(DateTime(dateTime.year, dateTime.month, day!));
      },
      items: days.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildYearSelect(),
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: const Text('年'),
        ),
        _buildMonthSelect(),
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: const Text('月'),
        ),
        _buildDaySelect(),
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: const Text('日'),
        ),
      ],
    );
  }
}

