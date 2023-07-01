import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FluttertoastDemo extends StatefulWidget {
  const FluttertoastDemo({super.key});

  @override
  State<FluttertoastDemo> createState() => _FluttertoastDemoState();
}

class _FluttertoastDemoState extends State<FluttertoastDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Fluttertoast.showToast(
                msg: 'This is Center Short Toast',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.purple,
                textColor: Colors.white,
                fontSize: 20);
          },
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
