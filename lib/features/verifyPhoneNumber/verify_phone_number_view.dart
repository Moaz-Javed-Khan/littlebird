import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/utils/nested_shell_routing.dart';
import 'package:littlebird/widgets/cutom_gradient_button_widget.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

class VerifyPhoneNumverView extends StatelessWidget {
  const VerifyPhoneNumverView({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Verify Phone Number",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                width: 260,
                child: Text(
                  "Please enter your Country & your Phone Number",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: CountryPickerDropdown(
                      initialValue: 'pk',
                      itemBuilder: _buildDropdownItem,
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                      onChanged: (value) {
                        // this.phoneNo=value;
                        print(value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              CustomGradientButtonWidget(
                color: const Color.fromARGB(255, 11, 168, 188),
                onClick: () {
                  context.go(ENTEROTPVIEW);
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

  Widget _buildDropdownItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}"),
          // Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      );
}
