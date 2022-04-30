import 'packages.dart';

void main() {
  runApp(const MyCountdown());
}

class MyCountdown extends StatelessWidget {
  const MyCountdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
