import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/components/item_tile.dart';
import 'package:hospital_appp/components/my_blue_button.dart';

class RequestDevices extends StatelessWidget {
  const RequestDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
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
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 273,
                    height: 70,
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Do you want to be a distributor?",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 302,
                  height: 75,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Select which device(s) you want to order",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 325,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [ItemTile(), ItemTile(), ItemTile()],
                  ),
                ),
                const SizedBox(height: 80),
                MyBlueButton(text: "Continue"),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
