import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerDemo extends StatefulWidget {
  const PermissionHandlerDemo({super.key});

  @override
  State<PermissionHandlerDemo> createState() => _PermissionHandlerDemoState();
}

class _PermissionHandlerDemoState extends State<PermissionHandlerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Permission Handler Demo'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () async {
                  if (await Permission.location.request().isGranted) {
                    // ignore: avoid_print
                    print('Loaction Permission Granted');
                  } else {
                    // ignore: avoid_print
                    print('Location Permission Denied');
                  }
                },
                child: const Text('Request Single Permission'),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () async {
                  Map<Permission, PermissionStatus> statues =
                      await [Permission.location, Permission.camera].request();
                  if (statues[Permission.location]!.isDenied) {
                    // ignore: avoid_print
                    print('Loacation Permission is denied');
                  }
                  if (statues[Permission.camera]!.isDenied) {
                    // ignore: avoid_print
                    print('Camera Permission is denied');
                  }
                },
                child: const Text('Request Multiple Permission'),
                // You can request multiple permissions at once.
              ),
            ),

            Container(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () async {
                  var status = await Permission.camera.status;
                  if (status.isDenied) {
                    // We didn't ask for permission yet or the permission has been denied before but not permanently.
                    // ignore: avoid_print
                    print('Permission is denied');
                  } else if (status.isGranted) {
                    // ignore: avoid_print
                    print('Permission is Already granted.');
                  } else if (status.isPermanentlyDenied) {
                    // ignore: avoid_print
                    print('Permission is permanatly denied.');
                  } else if (status.isRestricted) {
                    // ignore: avoid_print
                    print('Permission is OS restricted.');
                  }
                },
                child: const Text('Check Camera Permission'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
