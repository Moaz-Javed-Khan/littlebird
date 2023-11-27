import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_gradient_button_widget.dart';

class EnterOtpView extends StatelessWidget {
  const EnterOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    String? otp;

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/verification_img.png",
                height: 140,
                width: 140,
              ),
              const SizedBox(height: 32),
              const Text(
                "Verify OTP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                width: 260,
                child: Text(
                  "Please enter the code sent to your phone number *****",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 32),
              OtpTextField(
                numberOfFields: 6,
                showFieldAsBox: false,
                fieldWidth: 40,
                filled: true,
                fillColor: Colors.grey[200]!,
                disabledBorderColor: Colors.grey[200]!,
                enabledBorderColor: Colors.grey[200]!,
                borderColor: Colors.grey[200]!,
                focusedBorderColor: Colors.grey[200]!,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                keyboardType: TextInputType.number,
                onCodeChanged: (String code) {
                  otp = code;
                },
                onSubmit: (String code) {
                  otp = code;
                },
              ),
              const SizedBox(height: 32),
              CustomGradientButtonWidget(
                color: const Color.fromARGB(255, 11, 168, 188),
                onClick: () {
                  context.go(CREATEPINVIEW);
                },
                title: const Center(
                  child: Text(
                    "SEND",
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
    );
  }
}
