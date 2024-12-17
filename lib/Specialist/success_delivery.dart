import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Account/Referral/my_blue_button.dart';

class SuccessDelivery extends StatelessWidget {
  const SuccessDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Success!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 258,
                  height: 60,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Your account has been created successfully",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 140,
                ),
                SvgPicture.asset("assets/images/successimg.svg"),
                const Spacer(),
                MyBlueButton(text: "Continue to login"),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
