import 'packages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Countdown Timer"),
      ),
      body: const Center(
        child: CountdownTimer(
          duration: Duration(days: 1),
        ),
      ),
    );
  }
}
