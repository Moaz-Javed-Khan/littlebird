import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';

class JoinButton extends StatelessWidget {
  const JoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(SELECTROLE);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 16.0,
          right: 40.0,
          bottom: 16.0,
          left: 40.0,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 11, 168, 188),
              Color.fromARGB(255, 11, 188, 156),
              Color.fromARGB(255, 76, 175, 130),
            ],
          ),
          // color: Color.fromARGB(255, 11, 168, 188),
        ),
        child: const Text(
          "Join now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
