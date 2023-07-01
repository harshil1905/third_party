import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FlutterStaggeredAnimationsDemo extends StatefulWidget {
  const FlutterStaggeredAnimationsDemo({super.key});

  @override
  State<FlutterStaggeredAnimationsDemo> createState() =>
      _FlutterStaggeredAnimationsDemoState();
}

class _FlutterStaggeredAnimationsDemoState
    extends State<FlutterStaggeredAnimationsDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: 3,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 5000),
                child: SlideAnimation(
                  child: FadeInAnimation(
                    curve: Curves.decelerate,
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.black,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
