import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterSecondPage extends StatefulWidget {
  const GoRouterSecondPage({super.key});

  @override
  State<GoRouterSecondPage> createState() => _GoRouterSecondPageState();
}

class _GoRouterSecondPageState extends State<GoRouterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Second Page'),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                context.go('/');
              },
              child: const Text('Go Back First Page'),
            )
          ],
        ),
      ),
    );
  }
}
