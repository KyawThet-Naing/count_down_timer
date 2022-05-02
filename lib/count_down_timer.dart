import 'package:countdown_widget/countdown_widget.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  final Duration duration;

  const CountdownTimer({Key? key, required this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CountDownWidget(
      duration: duration,
      builder: (_, duration) {
        var time = formatDuration(duration);
        return Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(5),
          child: Text(
            time,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        );
      },
    );
  }

  ///ref: https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss/60904049#60904049
  String formatDuration(Duration d) {
    var seconds = d.inSeconds;
    final days = seconds ~/ Duration.secondsPerDay;
    seconds -= days * Duration.secondsPerDay;
    final hours = seconds ~/ Duration.secondsPerHour;
    seconds -= hours * Duration.secondsPerHour;
    final minutes = seconds ~/ Duration.secondsPerMinute;
    seconds -= minutes * Duration.secondsPerMinute;
    return "${towDigits(days)} : ${towDigits(hours)} : ${towDigits(minutes)} : ${towDigits(seconds)}";
  }

  String towDigits(int n) => n.toString().padLeft(2, '0');
}
