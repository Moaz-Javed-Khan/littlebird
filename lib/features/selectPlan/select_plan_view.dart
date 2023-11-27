import 'package:flutter/material.dart';
import 'package:littlebird/widgets/free_plan_widget.dart';
import 'package:littlebird/widgets/premium_plan_widget.dart';

class SelectPlanView extends StatefulWidget {
  SelectPlanView({super.key});

  @override
  State<SelectPlanView> createState() => _SelectPlanViewState();
}

class _SelectPlanViewState extends State<SelectPlanView> {
  bool freeSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // stops: [0.1, 0.5, 0.7, 0.9],
          colors: freeSelected
              ? [
                  const Color.fromARGB(255, 73, 84, 213),
                  Colors.indigo[700]!,
                  Colors.indigo[700]!,
                  const Color.fromARGB(255, 73, 84, 213),
                  Colors.indigo[700]!,
                ]
              : [
                  Colors.cyan[300]!,
                  Colors.cyan,
                  Colors.tealAccent[700]!,
                  Colors.tealAccent[700]!,
                ],
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color(0x00000000),
        // backgroundColor: freeSelected ? Colors.blue : Colors.green,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select Your Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ActionChip(
                      elevation: 8.0,
                      padding: const EdgeInsets.all(2.0),
                      // avatar: const CircleAvatar(
                      //   backgroundColor: Colors.white,
                      //   child: Icon(
                      //     Icons.mode_comment,
                      //     color: Colors.white,
                      //     size: 20,
                      //   ),
                      // ),
                      label: const Text('Free'),
                      onPressed: () {
                        setState(() {
                          freeSelected = true;
                        });
                      },
                      backgroundColor: freeSelected
                          ? Colors.white
                          : Colors.grey, // white.withOpacity(0.6),

                      // freeSelected ? Colors.white : Colors.transparent,

                      shape: const StadiumBorder(
                        side: BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    ActionChip(
                      elevation: 8.0,
                      padding: const EdgeInsets.all(2.0),
                      label: Row(
                        children: [
                          const Text('Premium'),
                          const SizedBox(width: 4),
                          Image.asset(
                            "assets/premium_icon.png",
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          freeSelected = false;
                        });
                      },
                      backgroundColor: freeSelected
                          ? Colors.grey // white.withOpacity(0.6)
                          : Colors.white,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: freeSelected
                        ? const FreePlanWidget()
                        : const PremiumPlanWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
