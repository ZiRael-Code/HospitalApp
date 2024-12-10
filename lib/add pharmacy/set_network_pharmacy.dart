import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SetupNetworkPharmacy1 extends StatelessWidget {
  const SetupNetworkPharmacy1({super.key});

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
                  "Network setup successful.",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 260,
              height: 58,
              child: const Text(
                textAlign: TextAlign.center,
                "You’ve successfully setup your network, you will be able to see them all when you login to the app.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SvgPicture.asset("assets/images/network.svg"),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: 90,
                        height: 118,
                        child: Column(
                          children: [
                            Container(
                              width: 78,
                              height: 78,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[100]),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/person.svg"),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Add patients",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 26,
                        height: 26,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: const Icon(Icons.check),
                      ),
                    ],
                  ),

                  // physicans
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: 90,
                        height: 118,
                        child: Column(
                          children: [
                            Container(
                              width: 78,
                              height: 78,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[100]),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/doctor.svg")),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Add specailist",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 26,
                        height: 26,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: const Icon(Icons.check),
                      ),
                    ],
                  ),

                  // pharmacy
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: 90,
                        height: 118,
                        child: Column(
                          children: [
                            Container(
                              width: 78,
                              height: 78,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[100]),
                              child: Center(
                                  child:
                                      SvgPicture.asset("assets/images/rx.svg")),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Add pharmacy",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 26,
                        height: 26,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: const Icon(Icons.check),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 335,
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue)),
              child: const Center(
                child: Text(
                  "I'll do this later",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
