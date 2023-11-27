import 'package:flutter/material.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Little Bird',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 11, 168, 188),
        ),
        // useMaterial3: true,
      ),
      // home: const SplashView(),
    );
  }
}
