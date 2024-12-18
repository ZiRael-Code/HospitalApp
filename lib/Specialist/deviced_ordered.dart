import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Account/Referral/my_blue_button.dart';
import 'package:hospital_appp/Specialist/success_delivery.dart';

class DevicedOrdered extends StatelessWidget {
  const DevicedOrdered({super.key});

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
                  "Device ordered",
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
                  child: Text(
                    textAlign: TextAlign.center,
                    "Your device has been ordered and will soon get to you. You will be notified once it is available.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                SvgPicture.asset("assets/images/Character.svg"),
                Spacer(),
                GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuccessDelivery())),
                    child: MyBlueButton(text: "Continue to login")),
                SizedBox(
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
