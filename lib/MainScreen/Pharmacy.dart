import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Pharmacy/order_for_device.dart';
import 'package:hospital_appp/Pharmacy/order_prescription.dart';
import 'package:hospital_appp/Pharmacy/search_for_available_drugs.dart';
import 'package:hospital_appp/Pharmacy/view_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/add_pharmacy.dart';

import 'Dashboard.dart';

class Pharmacy extends StatefulWidget {
  Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  late List<dynamic> section_list = [view_pharmacy(), pharmacy_setup()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Pharmacy",
          style: TextStyle(
              fontSize: getFontSize(27, context), fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            section_list[Random.secure().nextInt(2)],
            SizedBox(
              height: getFontSize(34, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                actions(
                  context,
                  Icons.add,
                  "Add new pharmacy",
                  MaterialPageRoute(builder: (builder) => AddPharmacy()),
                ),
                actions(
                    context,
                    "assets/images/pill2.svg",
                    "Order prescriptions",
                    MaterialPageRoute(
                        builder: (builder) => OrderPrescription())),
                actions(
                    context,
                    Icons.search,
                    "Search for available drug",
                    MaterialPageRoute(
                        builder: (builder) => SearchForAvailableDrug())),
                actions(context, Icons.edit_note, "Order for devices",
                    MaterialPageRoute(builder: (builder) => OrderForDevice())),
              ],
            ),
            SizedBox(
              height: getFontSize(30, context),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Affiliated pharmacies",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getFontSize(20, context)),
              ),
            ),
            SizedBox(
              height: getFontSize(14, context),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  pharmacy_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                  pharmacy_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      location: "Ikorodu . Lagos"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  view_pharmacy() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: getFontSize(0.7, context), color: Colors.blue),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: getFontSize(167, context),
                child: Text("New life hospital internal pharmacy",
                    style:
                        TextStyle(fontSize: getFontSize(16, context), fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: getFontSize(12, context)),
              SizedBox(
                width: getFontSize(206, context),
                child: Text(
                    style: TextStyle(fontSize: getFontSize(11, context)),
                    "Manage your hospital’s pharmacy from the app, take records and attend to patients needs"),
              ),
              SizedBox(height: getFontSize(12, context)),
              ElevatedButton(
                onPressed: () {
                  // TODO: Navigate to Pharmacy dashboard
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ViewPharmacy()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  // fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: getFontSize(12.0, context), horizontal: getFontSize(4.0, context)),
                    child: Row(
                      children: [
                        Text(
                          "View pharmacy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getFontSize(16, context)),
                        ),
                        SizedBox(
                          width: getFontSize(10, context),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: getFontSize(14, context),
                        )
                      ],
                    )),
              )
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: getFontSize(14, context), vertical: getFontSize(8, context)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff2E2E4226).withOpacity(0.40)),
            child: Row(
              children: [
                Text(
                  "12 ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: getFontSize(15, context)),
                ),
                Text("data")
              ],
            ),
          )
        ],
      ),
    );
  }

  pharmacy_setup() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset("assets/images/med_bottle.svg"),
        SizedBox(
          height: getFontSize(15, context),
        ),
        Text("Pharmacy setup",
            style: TextStyle(
                fontSize: getFontSize(20, context),
                fontWeight: FontWeight.w500)),
        SizedBox(
          height: getFontSize(10, context),
        ),
        Container(
          width: getFontSize(264, context),
          child: Text(
              textAlign: TextAlign.center,
              "Setup the internal pharmacy of your hospital right here on myvitalz, so you can keep track of records, drugs, devices, etc."),
        ),
        SizedBox(
          height: getFontSize(10, context),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            // fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: getFontSize(12.0, context), horizontal: getFontSize(4.0, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Setup pharmacy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(16, context)),
                  ),
                  SizedBox(
                    width: getFontSize(10, context),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: getFontSize(14, context),
                  )
                ],
              )),
        )
      ],
    );
  }

  pharmacy_tile(
      {required String name,
      required profile_path, // Pass the profile path
      required String location}) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: getFontSize(5, context)),
          Row(
            children: [
              SizedBox(
                  width: getFontSize(55, context),
                  height: getFontSize(55, context),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profile_path),
                  )),
              SizedBox(
                width: getFontSize(14, context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: getFontSize(18, context),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getFontSize(5, context),
                  ),
                  SizedBox(height: getFontSize(2, context)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      location,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: getFontSize(10, context)),
            ],
          ),
          SizedBox(height: getFontSize(5, context)),
          SizedBox(
            width: getFontSize(350, context),
            child: Divider(
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}

actions(BuildContext context, icon, String text, MaterialPageRoute action) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).push(action);
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(icon is String
                ? getFontSize(16, context)
                : getFontSize(12, context)),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffE2EDFF)),
            child: icon is String
                ? SvgPicture.asset(icon)
                : Icon(
                    icon,
                    size: getFontSize(36, context),
                    color: Colors.blue,
                  ),
          ),
          SizedBox(
            height: getFontSize(12, context),
          ),
          SizedBox(
            width: getFontSize(72, context),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getFontSize(13, context),
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ));
}
