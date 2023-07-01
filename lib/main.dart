import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_party/country_picker_demo.dart';

import 'sharedpreferences/counter_shared.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init;
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => const MaterialApp(
        // theme: ThemeData(
        //   brightness: Brightness.light,
        //   scaffoldBackgroundColor: const Color.fromRGBO(239, 238, 239, 1.0),
        // ),
        debugShowCheckedModeBanner: false,

        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: CountryPickerDemo(),

        // navigatorKey: navigatorKey,
      ),
    );
  }
}




//  only for go_router*


// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:third_party/go_router/page_1.dart';
// import 'package:third_party/go_router/page_2.dart';
// import 'package:third_party/sharedpreferences/counter_shared.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SharedPref.init;
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // GoRouter.......
//     final GoRouter router = GoRouter(
//       routes: <RouteBase>[
//         GoRoute(
//           path: '/',
//           builder: (BuildContext context, GoRouterState state) {
//             return const GoRouterFirstPage();
//           },
//           routes: <RouteBase>[
//             GoRoute(
//               path: 'details',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const GoRouterSecondPage();
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//     return MaterialApp.router(
//       routerConfig: router,
//     );
//     // return const MaterialApp(
//     //   home: GoRouterFirstPage(),
//     //   debugShowCheckedModeBanner: false,
//     // );
//   }
// }
