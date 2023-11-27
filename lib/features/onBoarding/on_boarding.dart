import 'package:flutter/material.dart';
import 'package:littlebird/features/onBoarding/on_boarding_content.dart';
import 'package:littlebird/widgets/join_button.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 8.0,
            bottom: 20.0,
            right: 8.0,
          ),
          child: Column(
            children: [
              Flexible(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          contents[index].image,
                          height: 300,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          contents[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          contents[index].description,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(
                    index,
                    currentIndex,
                    context,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const JoinButton(),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text("Join now"),
              // ),
              const SizedBox(height: 32),
              // const ToSignupButton(),
              // const ToSigninButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDot(
  int index,
  int currentIndex,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: CircleAvatar(
      radius: 5, // currentIndex == index ? 8 : 6,
      backgroundColor: currentIndex == index
          ? const Color.fromARGB(255, 11, 168, 188)
          : Colors.black,
    ),
  );
}
