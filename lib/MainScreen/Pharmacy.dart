import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Pharmacy/add_a_pharmacy.dart';
import 'package:hospital_appp/Pharmacy/order_for_device.dart';
import 'package:hospital_appp/Pharmacy/order_prescription.dart';
import 'package:hospital_appp/Pharmacy/search_for_available_drugs.dart';

import 'Dashboard.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:   Text("Pharmacy", style: TextStyle(fontSize: getFontSize(27, context), fontWeight: FontWeight.w500),),
      ),
      body: Padding(padding: EdgeInsets.all(12),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(width: 0.7, color: Colors.blue),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 167,
                        child: Text("New life hospital internal pharmacy",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 206,
                        child:
                      Text(style: TextStyle(fontSize: 11),"Manage your hospital’s pharmacy from the app, take records and attend to patients needs"),
                      ),
                        SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue ,
                  // fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                  child: Row(children: [
                    Text(
                      "View pharmacy",
                      style: TextStyle(color: Colors.white, fontSize: getFontSize(16, context)),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,)
                  ],)
                ),
              )
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xff2E2E4226).withOpacity(0.40)
                    ),
                    child: Row(
                      children: [
                        Text("12 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        Text("data")
                      ],
                    ),
                  )


                ],
              ),
            ),
            SizedBox(height: 34,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                actions(
                  context,
                  Icons.add,
                  "Add new pharmacy",
                  MaterialPageRoute(builder: (builder)=>AddAPharmacy()),

                ),
                actions(
                    context,
                    "assets/images/pill2.svg",
                    "Order prescriptions",
                    MaterialPageRoute(builder: (builder)=> OrderPrescription())
                ),
                actions(
                    context,
                   Icons.search,
                    "Search for available drug",
                    MaterialPageRoute(builder: (builder)=>SearchForAvailableDrugs())
                ),
                actions(
                    context,
                    Icons.edit_note,
                    "Order for devices",
                    MaterialPageRoute(builder: (builder)=>OrderForDevice())
                ),
              ],
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerLeft,
              child:
              Text("Affiliated pharmacies", style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: getFontSize(20, context)),),),
            SizedBox(height: 14,),
            Expanded(
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      pharmacy_tile(
                          name: "Olorunsogo Janet",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Salami Kelvin",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Olorunsogo Janet",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Salami Kelvin",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),pharmacy_tile(
                          name: "Olorunsogo Janet",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Salami Kelvin",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Olorunsogo Janet",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                      pharmacy_tile(
                          name: "Salami Kelvin",
                          profile_path: "assets/images/doc.png",
                          location: "Ikorodu . Lagos"
                      ),
                    ],
                  ),
                )
            )

          ],
        ),
      ),
    );
  }


  pharmacy_tile({
    required String name,
    required profile_path, // Pass the profile path
    required String location
  }){
    return Container(
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(
                  width: getFontSize(55, context),
                  height: getFontSize(55, context),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profile_path),
                  )
              ),
              SizedBox(width: 14,),
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
                  SizedBox(height: 5,),
                  SizedBox(height: 2),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      location
                      ,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 350,
            child: Divider(
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }

}
actions(
    BuildContext context,
    icon,
    String text,
    MaterialPageRoute action
    ) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).push(action);
      },
      child: Column(
        children: [
          Container(
            padding:  EdgeInsets.all( icon is String ? getFontSize(16, context) :  getFontSize(12, context) ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffE2EDFF)
            ),
            child: icon is String ? SvgPicture.asset(icon) : Icon(icon, size: getFontSize(36, context), color: Colors.blue,),
          ),
          SizedBox(height: 12,),
          SizedBox(
            width: 72,
            child:  Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: getFontSize(13, context),  fontWeight: FontWeight.w400),),
          )
        ],
      )
  );
}

