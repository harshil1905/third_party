import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieDemo extends StatefulWidget {
  const LottieDemo({super.key});

  @override
  State<LottieDemo> createState() => _LottieDemoState();
}

class _LottieDemoState extends State<LottieDemo> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            'assets/143281-location-pin.json',
            repeat: true,
            reverse: false,
            animate: isPlaying,
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  isPlaying = !isPlaying;
                },
              );
            },
            child: Text(isPlaying ? 'pause' : 'play'),
          )
        ],
      ),
    );
  }
}
