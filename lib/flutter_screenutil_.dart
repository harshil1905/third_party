import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LutterScreenutilDemo extends StatefulWidget {
  const LutterScreenutilDemo({super.key});

  @override
  State<LutterScreenutilDemo> createState() => _LutterScreenutilDemoState();
}

class _LutterScreenutilDemoState extends State<LutterScreenutilDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            height: 0.30.sh,
            width: 0.40.sw,
            child: const Text('hello'),
          )
        ],
      ),
    );
  }
}
