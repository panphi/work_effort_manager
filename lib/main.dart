import 'package:flutter/material.dart';
import 'package:work_effort_manager/routes.dart';

void main() {
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
