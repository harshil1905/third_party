import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterFirstPage extends StatefulWidget {
  const GoRouterFirstPage({super.key});

  @override
  State<GoRouterFirstPage> createState() => _GoRouterFirstPageState();
}

class _GoRouterFirstPageState extends State<GoRouterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('First Page'),
            MaterialButton(
              onPressed: () {
                context.go('/details');
              },
              child: const Text('Move to next Page'),
            )
          ],
        ),
      ),
    );
  }
}
