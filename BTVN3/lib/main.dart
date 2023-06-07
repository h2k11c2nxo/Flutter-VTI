import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app_router/app_router.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRoute = getIt<AppRouter>();
    return MaterialApp.router(
      routerConfig: appRoute.config(),
    );
  }
}
