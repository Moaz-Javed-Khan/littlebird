import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_gradient_button_widget.dart';
import 'package:littlebird/widgets/pin_widget.dart';

class CreatePinView extends StatefulWidget {
  CreatePinView({super.key});

  @override
  State<CreatePinView> createState() => _CreatePinViewState();
}

class _CreatePinViewState extends State<CreatePinView> {
  String enteredPin = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 12.0,
            left: 12.0,
            // top: 48.0,
            // bottom: 48.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              const Text(
                "Almost there!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Setup your pin to lock your app and your child app so no one can change settings"),
              const SizedBox(height: 24.0),
              Column(
                children: [
                  Image.asset(
                    "assets/forgot_password_img.png",
                    height: 120,
                    width: 120,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Create Pin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text("Enter 4 digit pin code"),
                  const SizedBox(height: 24),

                  // pin widget
                  PinWidget(
                    callback: (String data) {
                      setState(() {
                        enteredPin = data;
                      });
                      print("pin from new view $data");
                      return data;
                    },
                  ),
                  // const SizedBox(height: 12-.0),
                  enteredPin.length == 4
                      ? CustomGradientButtonWidget(
                          title: const Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onClick: () {
                            if (enteredPin.length < 4) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid PIN"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              context.go(SELECTPLANVIEW);
                            }
                          },
                          color: const Color.fromARGB(255, 11, 168, 188),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
