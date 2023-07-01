import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlutterScreenutilDemo extends StatefulWidget {
  const FlutterScreenutilDemo({super.key});

  @override
  State<FlutterScreenutilDemo> createState() => _FlutterScreenutilDemoState();
}

class _FlutterScreenutilDemoState extends State<FlutterScreenutilDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      //   child: const HomePage(title: 'First Method'),
    ));
  }
}
