import 'package:flutter/material.dart';
import 'package:third_party/sharedpreferences/counter_shared.dart';

class TextFilidShard extends StatefulWidget {
  const TextFilidShard({super.key});

  @override
  State<TextFilidShard> createState() => _TextFilidShardState();
}

class _TextFilidShardState extends State<TextFilidShard> {
  String name = '';
  TextEditingController textName = TextEditingController();
  @override
  void initState() {
    name = SharedPref.getName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    name = SharedPref.getName;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: textName,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  SharedPref.setName = textName.text;
                  setState(() {});
                },
                color: Colors.teal.shade100,
                child: const Text('submit'),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }
}
