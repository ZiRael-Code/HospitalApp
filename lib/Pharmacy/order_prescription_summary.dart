import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/MainScreen/MainNavigator.dart';

class OrderPrescriptionSummary extends StatefulWidget {
  const OrderPrescriptionSummary({super.key});

  @override
  State<OrderPrescriptionSummary> createState() =>
      _OrderPrescriptionSummaryState();
}

class _OrderPrescriptionSummaryState extends State<OrderPrescriptionSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFE5E5E5),
              ),
              child: SvgPicture.asset(
                'assets/images/back.svg',
                width: 8.0,
                height: 15,
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: const Center(
                child: Text(
                  'Order prescription',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.7, color: Colors.black26)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 61,
                      height: 61,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage("assets/images/pharm1.jpeg"),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Randy Blue pharmacy",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                  width: 0.5, color: Colors.black26)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("View pharmacy",
                                  style: TextStyle(color: Colors.blue)),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.blue,
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("Drug name:    ", style: TextStyle(fontSize: 14)),
                Text(
                  "Ibuprofen 500mg x 24",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Amount per pack", style: TextStyle(fontSize: 14)),
                    Text(
                      "N1,500",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("No of units:", style: TextStyle(fontSize: 14)),
                    Text(
                      "12 per pack",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (builder) => MainNavigator(
                              index: 0,
                            )), // Navigate to Login screen
                    (Route<dynamic> route) =>
                        false, // Remove all previous routes
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      "Continue"),
                ))
          ],
        ),
      ),
    );
  }
}
