import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_button_widget.dart';
import 'package:littlebird/widgets/frosted_glass_effect_widget.dart';

class FreePlanWidget extends StatelessWidget {
  const FreePlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // const SizedBox(height: 16),
        Image.asset(
          "assets/free_plan_img.png",
          height: 120,
          width: 120,
        ),
        // const SizedBox(height: 16),
        const Text(
          "Free 14 days trail",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\$0.00 ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "14 Days",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        // const SizedBox(height: 24),

        const FrostedGlassEffectWidget(
          planName: "Free",
          familyDevicesCount: 3,
          image: "assets/free_img.png",
        ),

        // const SizedBox(height: 24),

        CustomButtonWidget(
          title: const Center(
            child: Text(
              "Start your 14 days trial",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onClick: () {
            context.go(TERMSANDCONDITIONSVIEW);
          },
          color: Colors.white,
        ),

        // CustomGradientButtonWidget(
        //   title: const Center(
        //     child: Text(
        //       "Start your 14 days trial",
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   onClick: () {},
        //   color: Colors.white,
        // )
      ],
    );
  }
}
