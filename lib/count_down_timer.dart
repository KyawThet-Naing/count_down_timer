import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class CountdownTimer extends StatelessWidget {
  final Duration duration;

  const CountdownTimer({Key? key, required this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: duration.inSeconds,
      build: (_, double sec) {
        var duration = Duration(seconds: sec.toInt());
        String towDigit(int n) => n.toString().padLeft(2, '0');
        final days = towDigit(duration.inDays);
        final hours = towDigit(duration.inHours);
        final minutes = towDigit(duration.inMinutes.remainder(60));
        final seconds = towDigit(duration.inSeconds.remainder(60));
        var time = "$days : $hours : $minutes : $seconds";
        return Text(time, style: const TextStyle(fontSize: 50));
      },
      onFinished: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Timer is done!'),
          ),
        );
      },
    );
  }
}
