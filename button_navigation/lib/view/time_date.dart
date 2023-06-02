import 'package:flutter/material.dart';

class TimeDate extends StatefulWidget {
  const TimeDate({super.key});

  @override
  State<TimeDate> createState() => _TimeDateViewState();
}

class _TimeDateViewState extends State<TimeDate> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Time: ${time!.hour}:${time!.minute}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? newTime = await showTimePicker(
                context: context,
                initialTime: time!,
              );
              if (newTime != null) {
                setState(() {
                  time = newTime;
                });
              }
            },
            child: const Text("Change Time"),
          ),
          Text(
            'Date: ${date!.day}/${date!.month}/${date!.year}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date!,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
                if (newDate != null) {
                  setState(() {
                    date = newDate;
                  });
                }
              },
              child: const Text('Change Date'))
        ],
      ),
    );
  }
}
