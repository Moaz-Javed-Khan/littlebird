import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_gradient_button_widget.dart';
import 'package:lottie/lottie.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
            left: 8.0,
            // top: 48.0,
            // bottom: 48.0,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              // alignment: Alignment.center,
              // width: double.infinity,
              // height: double.infinity,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Lottie.asset(
                    "assets/lottieAnimation/lock_blue.json",
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Enter family code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 260,
                    child: Text(
                      "Enter your family code to sign up and connect directly with your family",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    "Don't have any family code",
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(VERIFYPHONENUMBER);
                    },
                    child: const Text(
                      "Continue as a new user",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 36),
                  CustomGradientButtonWidget(
                    color: const Color.fromARGB(255, 11, 168, 188),
                    onClick: () {
                      context.go(VERIFYPHONENUMBER);
                    },
                    title: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
