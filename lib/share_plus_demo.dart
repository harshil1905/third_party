// import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';

// class SharePlusDemo extends StatefulWidget {
//   const SharePlusDemo({super.key});

//   @override
//   State<SharePlusDemo> createState() => _SharePlusDemoState();
// }

// class _SharePlusDemoState extends State<SharePlusDemo> {
//   String text = '', link = '';
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(children: [
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black, width: 2),
//                 ),
//                 label: Text('Text'),
//               ),
//               onChanged: (String value) => setState(() {
//                 text = value;
//               }),
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black, width: 2),
//                 ),
//                 label: Text('Subject'),
//               ),
//               onChanged: (String value) => setState(() {
//                 link = value;
//               }),
//             ),
//             Builder(
//               builder: (BuildContext context) {
//                 return ElevatedButton(
//                     onPressed: text.isEmpty ? null : () => onShare(context),
//                     child: const Text('Share'));
//               },
//             )
//           ]),
//         ),
//       ),
//     );
//   }

//   void onShare(BuildContext context) async {
//     final box = context.findRenderObject() as RenderBox?;
//     await Share.share(text,
//         subject: link,
//         sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
//   }
// }
