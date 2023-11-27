import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:littlebird/widgets/cutom_gradient_button_widget.dart';

class AccountCreatedView extends StatelessWidget {
  const AccountCreatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20.0),
              Image.asset(
                "assets/success_img.png",
                width: 140,
                height: 140,
              ),
              const Text(
                "Account Created",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text(
                "Dear user your account has been created successfully. Continue to start",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12.0),
              CustomGradientButtonWidget(
                title: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onClick: () {},
                color: const Color.fromARGB(255, 11, 168, 188),
              ),

              // const Text(
              //   "By clicking \"continue\" you agree to our Terms and Conditions as well as out Privacy Policy",
              //   textAlign: TextAlign.center,
              // ),

              // Row(
              //   children: [
              //     const Text(
              //       'By clicking "continue" you agree to our',
              //       textAlign: TextAlign.center,
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: const Text(
              //         "Terms and Conditions",
              //       ),
              //     ),
              //     const Text(
              //       'as well as our',
              //       textAlign: TextAlign.center,
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: const Text(
              //         "Privacy Policy",
              //       ),
              //     ),
              //   ],
              // ),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By clicking "continue" you agree to our ',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms and Conditions");
                        },
                      text: 'Terms and Conditions',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const TextSpan(
                      text: ' as well as our ',
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policy");
                        },
                      text: 'Privacy Policy',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
