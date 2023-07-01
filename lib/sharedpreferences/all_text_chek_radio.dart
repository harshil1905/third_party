import 'package:flutter/material.dart';
import 'package:third_party/sharedpreferences/counter_shared.dart';

class TextChekRadio extends StatefulWidget {
  const TextChekRadio({super.key});

  @override
  State<TextChekRadio> createState() => TextChekRadioState();
}

class TextChekRadioState extends State<TextChekRadio> {
  String gender = '', female = 'female', male = 'male';
  bool isShow = false;
  TextEditingController textfirst = TextEditingController();
  TextEditingController textSecond = TextEditingController();
  TextEditingController textlast = TextEditingController();
  bool iscricket = SharedPref.getiscricket ?? false;
  bool isfootball = SharedPref.getisfootball ?? false;

  List<String> itemes = [];
  @override
  void initState() {
    itemes = SharedPref.getfullnames;
    SharedPref.getiscricket;
    SharedPref.getisfootball;
    SharedPref.getgender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    itemes = SharedPref.getfullnames;
    SharedPref.getiscricket;
    SharedPref.getisfootball;
    SharedPref.getgender;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: textfirst,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: textSecond,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: textlast,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const Row(
              children: [
                // Checkbox(
                //   value: iscricket,
                //   onChanged: (value) {
                //     setState(
                //       () {
                //         iscricket = value ?? true;
                //         SharedPref.setiscricket = iscricket;
                //       },
                //     );
                //   },
                // ),
                // const Text('cricket'),
                // const SizedBox(
                //   height: 10,
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Checkbox(
                //   value: SharedPref.getisfootball,
                //   onChanged: (value) {
                //     setState(
                //       () {
                //         isfootball = value ?? true;
                //         SharedPref.setisfootball = isfootball;
                //       },
                //     );
                //   },
                // ),
                //const Text('football'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text('gender:   '),
                Radio(
                  value: SharedPref.getmale,
                  groupValue: SharedPref.getgender,
                  onChanged: (value) {
                    isShow = false;
                    SharedPref.setgender = value;
                    setState(() {});
                  },
                ),
                const Text('male'),
                Radio(
                  value: SharedPref.getfemale,
                  groupValue: SharedPref.getgender,
                  onChanged: (value) {
                    isShow = false;
                    SharedPref.setgender = value;
                    setState(() {});
                  },
                ),
                const Text('female'),
              ],
            ),
            MaterialButton(
              onPressed: () {
                SharedPref.setfullnames = [
                  textfirst.text,
                  textSecond.text,
                  textlast.text,
                  SharedPref.getiscricket.toString(),
                  SharedPref.getisfootball.toString()
                ];

                // setState(() {
                //   if (isShow == false) {
                //     isShow = false;
                //   } else {
                //     gender = '';
                //     isShow = false;
                //   }
                // });
              },
              color: Colors.teal.shade100,
              child: const Text('submit'),
            ),
            if (itemes.isNotEmpty)
              Text("name:  ${itemes[0]} ${itemes[1]} ${itemes[2]}"),
            Text(gender),
          ],
        ),
      ),
    );
  }
}
