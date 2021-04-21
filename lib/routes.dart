import 'package:flutter/material.dart';
import 'package:work_effort_manager/pages/effort_list_page.dart';

const String effort_list_page_route = 'effortList';

Map<String, WidgetBuilder> routes = {
  effort_list_page_route: (context) => EffortListPage().build(context),
};
