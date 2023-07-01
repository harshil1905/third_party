// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';

// class DateTimePickerDemo extends StatefulWidget {
//   const DateTimePickerDemo({super.key});

//   @override
//   State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
// }

// class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             // DateTimePicker(
//             //   initialValue: '',
//             //   firstDate: DateTime(2000),
//             //   lastDate: DateTime(2100),
//             //   dateLabelText: 'Date',
//             //   // onChanged: (val) => print(val),
//             //   validator: (val) {
//             //     // print(val);
//             //     return null;
//             //   },
//             //   // onSaved: (val) => print(val),
//             // )

//             DateTimePicker(
//               type: DateTimePickerType.dateTimeSeparate,
//               dateMask: 'd MMM, yyyy',
//               initialValue: DateTime.now().toString(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2100),
//               icon: const Icon(Icons.event),
//               dateLabelText: 'Date',
//               timeLabelText: "Hour",
//               selectableDayPredicate: (date) {
//                 // Disable weekend days to select from the calendar
//                 if (date.weekday == 6 || date.weekday == 7) {
//                   return false;
//                 }

//                 return true;
//               },
//               // onChanged: (val) => print(val),
//               validator: (val) {
//                 //  print(val);
//                 return null;
//               },
//               //onSaved: (val) => print(val),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
