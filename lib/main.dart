import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:work_effort_manager/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WorkEffortManagerApp());
}

class WorkEffortManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work Effort Manager',
      initialRoute: effort_list_page_route,
      routes: routes,
    );
  }
}
