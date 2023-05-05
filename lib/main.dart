import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
        app: MaterialApp(
      builder: (buildContext, widget) {
        return ConnectivityWidgetWrapper(
          disableInteraction: true,
          height: 80,
          child: widget!,
        );
      },
      title: 'Connectivity Wrapper Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ElevatedButton(
        onPressed: () async {
          if (await ConnectivityWrapper.instance.isConnected) {
            Lottie.asset('assets/109531-no-internet.json');
          } else {
            const Text('Your internet connection is lost');
          }
        },
        child: const Text('Click me'),
      ),
    ));
  }
}
