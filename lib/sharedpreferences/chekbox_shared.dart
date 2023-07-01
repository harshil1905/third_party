import 'package:flutter/material.dart';
import 'package:third_party/sharedpreferences/counter_shared.dart';

class ChekBokDemo extends StatefulWidget {
  const ChekBokDemo({super.key});

  @override
  State<ChekBokDemo> createState() => _ChekBokDemoState();
}

class _ChekBokDemoState extends State<ChekBokDemo> {
  @override
  void initState() {
    SharedPref.getCricket;
    SharedPref.getFootBall;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SharedPref.getCricket;
    SharedPref.getFootBall;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Row(
              children: [
                Text('hobby:'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: SharedPref.getCricket,
                  onChanged: (value) {
                    setState(() {
                      SharedPref.setCricket = value!;
                    });
                  },
                ),
                const Text('cricket')
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: SharedPref.getFootBall,
                  onChanged: (value) {
                    setState(() {
                      SharedPref.setFootBall = value!;
                    });
                  },
                ),
                const Text('football')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
