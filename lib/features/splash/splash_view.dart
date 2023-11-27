import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // rgba(13, 21, 42, 1)

  Color splashBgColor = const Color.fromARGB(95, 21, 40, 146);

  double initailHeight = 350.0;

  Future<void> sizeChange() async {
    await Future.delayed(
      const Duration(milliseconds: 200),
    );

    setState(() {
      initailHeight = 100;
    });
  }

  @override
  void initState() {
    sizeChange();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.go(ONBOARDING);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBgColor,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.linear,
          height: initailHeight,
          child: Image.asset("assets/little_bird_img.png"),
        ),
      ),
    );
  }
}
