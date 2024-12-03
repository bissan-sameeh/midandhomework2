import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(text: 'Subject', color: Colors.amber),
                buildContainer(text: 'Subject Hour', color: Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(text: 'Flutter subject', color: Colors.grey),
                buildContainer(text: 'Subject 1', color: Colors.grey),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(text: 'Subject 2', color: Colors.grey),
                buildContainer(text: '3 Hours', color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Container buildContainer({required String text, required Color color}) {
    return Container(
      width: 150,
      color: color,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(4),
      child: Text(
        text,
      ),
    );
  }

}
