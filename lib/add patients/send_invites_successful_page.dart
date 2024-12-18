import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/set_network.dart';
import 'package:hospital_appp/components/my_blue_button.dart';

class SendInvitesSuccessPage extends StatelessWidget {
  const SendInvitesSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 35,
                        height: 35,
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
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Success!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 256,
                height: 47,
                child: Text(
                  textAlign: TextAlign.center,
                  "You have successfully added patients to your hospital network.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SetupNetwork())),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: const MyBlueButton(text: "Done"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
