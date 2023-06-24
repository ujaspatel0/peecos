import 'package:flutter/material.dart';

class TimeSelect extends StatelessWidget {
  const TimeSelect({Key? key, required this.time, required this.onChanged}) : super(key: key);
  final String time;
  final Function(String time) onChanged;
  String _normalizeValue(int value) {
    if (value < 10) {
      return '0$value';
    }
    return value.toString();
  }

  int _getHour() {
    final parts = time.split(':');
    return int.parse(parts[0]);
  }

  int _getMinute() {
    final parts = time.split(':');
    return int.parse(parts[1]);
  }

  Widget _buildHour() {
    final hours = <int>[];
    for (int i = 0; i < 24; i++) {
      hours.add(i);
    }

    return DropdownButton<int>(
      value: _getHour(),
      onChanged: (int? newValue) {
        final newTime =
            _normalizeValue(newValue!) + ':' + _normalizeValue(_getMinute());
        onChanged(newTime);
      },
      items: hours.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }

  Widget _buildMinute() {
    final minutes = <int>[];
    for (int i = 0; i < 60; i++) {
      minutes.add(i);
    }

    return DropdownButton<int>(
      value: _getMinute(),
      onChanged: (int? newValue) {
        final newTime =
            _normalizeValue(_getHour()) + ':' + _normalizeValue(newValue!);
        onChanged(newTime);
      },
      items: minutes.map<DropdownMenuItem<int>>((int value) {
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
        _buildHour(),
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: const Text('時'),
        ),
        _buildMinute(),
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: const Text('分'),
        ),
      ],
    );
  }
}
