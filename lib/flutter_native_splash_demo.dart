import 'dart:async';
import 'package:flutter/material.dart';

class FlutterNativeSplashDemo extends StatefulWidget {
  const FlutterNativeSplashDemo({super.key});
  @override
  FlutterNativeSplashDemoState createState() => FlutterNativeSplashDemoState();
}

class FlutterNativeSplashDemoState extends State<FlutterNativeSplashDemo> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/images/png-transparent-flutter-hd-logo.png'),
      // FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Splash Screen Example")),
      body: const Center(
          child: Text("Welcome to Home Page",
              style: TextStyle(color: Colors.black, fontSize: 30))),
    );
  }
}
