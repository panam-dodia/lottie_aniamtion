import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: const Text('lottie'),
        ),
        body: Center(
          child: SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset('assets/109531-no-internet.json')),
        ),
      ),
    );
  }
}
