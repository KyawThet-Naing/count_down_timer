import './packages.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Countdown Timer"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CountdownTimer(
              duration: Duration(days: 1),
            ),
            SizedBox(height: 30),
            CountdownTimer(
              duration: Duration(days: 2),
            ),
            SizedBox(height: 30),
            CountdownTimer(
              duration: Duration(days: 3),
            ),
            SizedBox(height: 30),
            CountdownTimer(
              duration: Duration(days: 4),
            ),
            SizedBox(height: 30),
            CountdownTimer(
              duration: Duration(days: 5),
            ),
          ],
        ),
      ),
    );
  }
}
