import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/components/my_blue_button.dart';

class DestributionOnboarding1 extends StatelessWidget {
  const DestributionOnboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/back.svg',
                      width: 8.0,
                      height: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 273,
                  height: 70,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Do you want to be a distributor?",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 302,
                height: 75,
                child: const Text(
                  textAlign: TextAlign.center,
                  "Become a distributor and sell devices to pharmacies, doctors and patients. Distributors are given discounts on device prices.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/distri.jpg"),
              SizedBox(
                height: 40,
              ),
              MyBlueButton(text: "Yes, become a distributor"),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 380,
                height: 54,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  "Not now",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
