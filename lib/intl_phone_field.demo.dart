import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class IntlPhoneFieldDemo extends StatefulWidget {
  const IntlPhoneFieldDemo({super.key});

  @override
  State<IntlPhoneFieldDemo> createState() => _IntlPhoneFieldDemoState();
}

class _IntlPhoneFieldDemoState extends State<IntlPhoneFieldDemo> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  // ignore: non_constant_identifier_names
                  onCountryChanged: (Country) {
                    print('Country changed to: ' + Country.name);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  child: const Text('submit'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    formKey.currentContext?.size;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
