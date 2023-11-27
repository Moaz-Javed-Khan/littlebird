import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_button_widget.dart';
import 'package:littlebird/widgets/frosted_glass_effect_widget.dart';

class PremiumPlanWidget extends StatelessWidget {
  const PremiumPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // const SizedBox(height: 16),
        Image.asset(
          "assets/pro_plan_img.png",
          height: 120,
          width: 120,
        ),
        // const SizedBox(height: 16),
        const Text(
          "Premiun",
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
              "\$99.99 ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "/year",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const FrostedGlassEffectWidget(
          planName: "Premium",
          familyDevicesCount: 4,
          image: "assets/premium_icon.png",
        ),

        CustomButtonWidget(
          title: const Center(
            child: Text(
              "Subscribe to premium",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onClick: () {
            context.go(CHECKOUTPREMIUMVIEW);
          },
          color: Colors.white,
        )

        // CustomGradientButtonWidget(
        //   title: const Center(
        //     child: Text(
        //       "Subscribe to premium",
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
