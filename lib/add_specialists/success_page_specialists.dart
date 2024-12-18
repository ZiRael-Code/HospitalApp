import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add_specialists/setup_network_specialists.dart';

class SuccessPageSpecialists extends StatelessWidget {
  const SuccessPageSpecialists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
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
              child: Text(
                "Success!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 256,
                height: 47,
                child: Text(
                  textAlign: TextAlign.center,
                  "You have Successfully added physicans to you hospital network.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SetupNetworkPharmacy())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  width: 335,
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      border: Border.all(color: Colors.blue.shade50)),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
