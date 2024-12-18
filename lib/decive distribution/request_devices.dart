import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Specialist/SelectPickupLocation.dart';
import 'package:hospital_appp/components/item_tile.dart';
import 'package:hospital_appp/components/my_blue_button.dart';
import 'package:hospital_appp/components/my_white_button.dart';
import 'package:hospital_appp/home%20delivery/set_your_location.dart';

class RequestDevices extends StatefulWidget {
  const RequestDevices({super.key});

  @override
  State<RequestDevices> createState() => _RequestDevicesState();
}

class _RequestDevicesState extends State<RequestDevices> {
  void _showQuickActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset("assets/images/rec.svg"),
              Text(
                "Select delivery method ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectYourLocation())),
                  child: const MyBlueButton(text: "Set delivery location")),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Selectpickuplocation())),
                  child: const MyWhiteButton(text: "Select pickup location")),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

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
                GestureDetector(
                  onTap: () => _showQuickActionSheet(context),
                  child: MyBlueButton(
                    text: "Continue",
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
