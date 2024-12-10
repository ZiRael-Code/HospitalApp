import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/components/my_blue_button.dart';

class DestributorId extends StatelessWidget {
  const DestributorId({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  "You get a special serial ID when you become a distributor. This ID is attached to the devices, so when someone buys from you, we can verify the purchase.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              const Text("Serial ID:"),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 242,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    "87ORWYFHY-8GO46REG8",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 79,
                height: 28,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/Union.svg"),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "Copy",
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Spacer(),
              Text(
                "**You can always check it in Account > Devices > Distributor ID",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              MyBlueButton(text: "Continue"),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
