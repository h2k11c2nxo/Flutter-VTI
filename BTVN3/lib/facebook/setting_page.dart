import 'package:auto_route/auto_route.dart';
import 'package:first_app/app_router/app_router.dart';
import 'package:first_app/data/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/priority.dart';
import '../data/to-do-list-data.dart';
import '../gen/assets.gen.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Hello Setting'));
  }
}
