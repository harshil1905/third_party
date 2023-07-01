import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorPayDemo extends StatefulWidget {
  const RazorPayDemo({super.key});

  @override
  State<RazorPayDemo> createState() => _RazorPayDemoState();
}

class _RazorPayDemoState extends State<RazorPayDemo> {
  Razorpay razorpay = Razorpay();
  var options = {
    'key': 'rzp_test_8Pd1leEThHp6ip',
    'amount': 100,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'}
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              razorpay.open(options);
            },
            child: const Text('Pay'),
          ),
        ),
      ),
    );
  }
}
