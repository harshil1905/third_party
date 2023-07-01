import 'package:flutter/material.dart';

import 'package:third_party/sharedpreferences/counter_shared.dart';

class MulitTExtfieldsharedpreferences extends StatefulWidget {
  const MulitTExtfieldsharedpreferences({super.key});

  @override
  State<MulitTExtfieldsharedpreferences> createState() =>
      _MulitTExtfieldsharedpreferencesState();
}

class _MulitTExtfieldsharedpreferencesState
    extends State<MulitTExtfieldsharedpreferences> {
  TextEditingController nameText = TextEditingController();
  TextEditingController midelNameText = TextEditingController();
  TextEditingController lastNameText = TextEditingController();
  List<String> items = [];

  @override
  void initState() {
    items = SharedPref.getFullName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    items = SharedPref.getFullName;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: nameText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: midelNameText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: lastNameText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                SharedPref.setFullName = [
                  nameText.text,
                  midelNameText.text,
                  lastNameText.text
                ];
                setState(() {});
              },
              color: Colors.teal.shade100,
              child: const Text('submit'),
            ),
            if (items.isNotEmpty) Text("${items[0]} ${items[1]} ${items[2]}")
          ],
        ),
      ),
    );
  }
}
