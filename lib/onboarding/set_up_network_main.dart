import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/add_patients.dart';
import 'package:hospital_appp/add%20patients/add_patients_main.dart';
import 'package:hospital_appp/add%20pharmacy/add_pharmacy.dart';
import 'package:hospital_appp/add_specialists/add_specialists.dart';

class SetupNetworkMain extends StatelessWidget {
  const SetupNetworkMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Center(
                child: Text(
                  "Setup Network",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 257,
                height: 47,
                child: Text(
                  textAlign: TextAlign.center,
                  "Setup your network and add patients, specialists and hospitals.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SvgPicture.asset("assets/images/network.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 90,
                    height: 118,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPatients())),
                          child: Container(
                            width: 78,
                            height: 78,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue[50]),
                            child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/person.svg")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: const Text(
                            "Add patients",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),

                  // physicans
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddSpecialists())),
                    child: Container(
                      width: 90,
                      height: 118,
                      child: Column(
                        children: [
                          Container(
                            width: 78,
                            height: 78,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue[50]),
                            child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/doctor.svg")),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Add specialists",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),

                  // pharmacy
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => AddPharmacy())),
                    child: Container(
                      width: 90,
                      height: 118,
                      child: Column(
                        children: [
                          Container(
                            width: 78,
                            height: 78,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue[50]),
                            child: Center(
                                child:
                                    SvgPicture.asset("assets/images/rx.svg")),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Add pharmacy",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: 335,
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue)),
                child: Center(
                    child: Text(
                  "I'll do this later",
                  style: TextStyle(color: Colors.blue),
                )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
