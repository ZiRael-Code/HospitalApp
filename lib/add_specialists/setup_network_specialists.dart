import '../MainScreen/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/MainScreen/MainNavigator.dart';
import 'package:hospital_appp/add%20pharmacy/add_pharmacy.dart';
import 'package:hospital_appp/onboarding/login_page.dart';

class SetupNetworkPharmacy extends StatelessWidget {
  SetupNetworkPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getFontSize(15, context), vertical: getFontSize(22, context)),
        child: Column(
          children: [
            Spacer(),
             Center(
                child: Text(
                  "Setup Network",
                  style: TextStyle(fontSize: getFontSize(28, context), fontWeight: FontWeight.w500),
                ),
              ),

            Padding(
              padding: EdgeInsets.only(top: getFontSize(20, context)),
              child: Container(
                width: getFontSize(257, context),
                height: getFontSize(47, context),
                child: Text(
                  textAlign: TextAlign.center,
                  "Setup your network and add patients, specialists and hospitals.",
                  style: TextStyle(fontSize: getFontSize(14, context), color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getFontSize(80, context)),
              child: SvgPicture.asset("assets/images/network.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(left: getFontSize(5, context), right: getFontSize(5, context), top: getFontSize(80, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // patients
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: getFontSize(90, context),
                        height: getFontSize(118, context),
                        child: Column(
                          children: [
                            Container(
                              width: getFontSize(78, context),
                              height: getFontSize(78, context),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[100]),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/person.svg")),
                            ),
                            SizedBox(
                              height: getFontSize(20, context),
                            ),
                            Text(
                              "Add patients",
                              style: TextStyle(fontSize: getFontSize(12, context)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: getFontSize(26, context),
                        height: getFontSize(26, context),
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Icon(Icons.check),
                      ),
                    ],
                  ),

                  // specialists
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: getFontSize(90, context),
                        height: getFontSize(118, context),
                        child: Column(
                          children: [
                            Container(
                              width: getFontSize(78, context),
                              height: getFontSize(78, context),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[100]),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/doctor.svg")),
                            ),
                            SizedBox(
                              height: getFontSize(20, context),
                            ),
                            Text(
                              "Add specialists",
                              style: TextStyle(fontSize: getFontSize(12, context)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: getFontSize(26, context),
                        height: getFontSize(26, context),
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Icon(Icons.check),
                      ),
                    ],
                  ),
                  // pharmacy
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddPharmacy())),
                    child: Container(
                      width: getFontSize(90, context),
                      height: getFontSize(118, context),
                      child: Column(
                        children: [
                          Container(
                            width: getFontSize(78, context),
                            height: getFontSize(78, context),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue[50]),
                            child: Center(
                                child:
                                    SvgPicture.asset("assets/images/rx.svg")),
                          ),
                          SizedBox(
                            height: getFontSize(20, context),
                          ),
                          Text(
                            "Add pharmacy",
                            style: TextStyle(fontSize: getFontSize(12, context)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
             GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainNavigator(index: 0))),
                child: Container(
                  width: getFontSize(335, context),
                  height: getFontSize(54, context),
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