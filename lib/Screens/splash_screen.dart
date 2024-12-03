import 'package:flutter/material.dart';
import 'package:mid/Screens/bnb/main_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MainView(),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.task,
          size: 50,
        ),
      ),
    );
  }
}
