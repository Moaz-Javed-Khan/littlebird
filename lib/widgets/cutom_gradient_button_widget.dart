import 'package:flutter/material.dart';

class CustomGradientButtonWidget extends StatelessWidget {
  final Widget title;
  // final String name;
  final VoidCallback onClick;
  final Color color;

  const CustomGradientButtonWidget({
    Key? key,
    required this.title,
    // required this.name,
    required this.onClick,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        onClick();
      },
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Card(
            elevation: 4,
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
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
              ),
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 18.0,
                  ),
                  child: title
                  // Text(
                  //   name,
                  //   textAlign: TextAlign.center,
                  //   style: const TextStyle(
                  //     fontSize: 16,
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
