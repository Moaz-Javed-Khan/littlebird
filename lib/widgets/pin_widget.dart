import 'package:flutter/material.dart';

typedef StringValue = String Function(String);

// ignore: must_be_immutable
class PinWidget extends StatefulWidget {
  PinWidget({super.key, required this.callback,});

  StringValue callback;

  @override
  State<PinWidget> createState() => _PinWidgetState();
}

class _PinWidgetState extends State<PinWidget> {
  String enteredPin = "";

  void btnClicked(String value) {
    if (value == "del") {
      if (enteredPin.isNotEmpty && enteredPin.length > 0) {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
      }
      setState(() {});
    } else if (enteredPin.length <= 3) {
      enteredPin = enteredPin + value;
      setState(() {});
      print(enteredPin);
    }

    // else if (enteredPin.length == 3) {
    //   enteredPin = enteredPin + value;
    //   print(enteredPin);
    // }

    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("PIN Limit Reached"),
          backgroundColor: Colors.red,
        ),
      );
    }

    widget.callback(enteredPin);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        pinDots(),
        const SizedBox(height: 8),
        Row(
          children: [
            pinButton(btnContent: pinContent("1"), value: "1"),
            pinButton(btnContent: pinContent("2"), value: "2"),
            pinButton(btnContent: pinContent("3"), value: "3"),
          ],
        ),
        Row(
          children: [
            pinButton(btnContent: pinContent("4"), value: "4"),
            pinButton(btnContent: pinContent("5"), value: "5"),
            pinButton(btnContent: pinContent("6"), value: "6"),
          ],
        ),
        Row(
          children: [
            pinButton(btnContent: pinContent("7"), value: "7"),
            pinButton(btnContent: pinContent("8"), value: "8"),
            pinButton(btnContent: pinContent("9"), value: "9"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(child: SizedBox()),
            pinButton(btnContent: pinContent("0"), value: "0"),
            enteredPin.isNotEmpty
                ? pinButton(
                    btnContent: const ImageIcon(
                      AssetImage("assets/delete_left_icon.png"),
                      color: Colors.black,
                    ),
                    value: "del",
                  )
                : const Expanded(child: SizedBox()),

            //
            // pinButton(btnContent: const Text(""), value: ""),
            // pinButton(btnContent: pinContent("0"), value: "0"),
            // pinButton(
            //   btnContent: enteredPin.isNotEmpty
            //       ? const ImageIcon(
            //           AssetImage("assets/delete_left_icon.png"),
            //           color: Colors.black,
            //         )
            //       : const Text(" "),
            //   value: "del",
            // ),
          ],
        ),
        // enteredPin.length == 4
        //     ? CustomButton(
        //         title: const Center(
        //           child: Text(
        //             "Continue",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //         onClick: () {
        //           if (enteredPin.length < 4) {
        //             ScaffoldMessenger.of(context).showSnackBar(
        //               const SnackBar(
        //                 content: Text("Invalid PIN"),
        //                 backgroundColor: Colors.red,
        //               ),
        //             );
        //           } else {
        //             context.go(ACCOUNTCREATEDVIEW);
        //           }
        //         },
        //         color: const Color.fromARGB(255, 11, 168, 188),
        //       )
        //     : const SizedBox(),
      ],
    );
  }

  Widget pinButton({
    required Widget btnContent,
    required String value,
  }) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          // splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,
          // shadowColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: () {
          btnClicked(value);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: btnContent,
          // Text(
          //   btnVal,
          //   style: const TextStyle(
          //     fontSize: 25.0,
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget pinContent(String num) {
    return Text(
      num,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Widget pinDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: enteredPin.isNotEmpty
                ? const Color.fromARGB(255, 11, 168, 188)
                : Colors.transparent,
          ),
          height: 10,
          width: 10,
        ),
        const SizedBox(width: 6),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: enteredPin.length == 2 ||
                    enteredPin.length == 3 ||
                    enteredPin.length == 4
                ? const Color.fromARGB(255, 11, 168, 188)
                : Colors.transparent,
          ),
          height: 10,
          width: 10,
        ),
        const SizedBox(width: 6),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: enteredPin.length == 3 || enteredPin.length == 4
                ? const Color.fromARGB(255, 11, 168, 188)
                : Colors.transparent,
          ),
          height: 10,
          width: 10,
        ),
        const SizedBox(width: 6),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: enteredPin.length == 4
                ? const Color.fromARGB(255, 11, 168, 188)
                : Colors.transparent,
          ),
          height: 10,
          width: 10,
        ),
      ],
    );
  }
}
