import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Patient/messages.dart';
import 'package:hospital_appp/Specialist/WorkHistory.dart';
import 'package:hospital_appp/Specialist/add_new_specialist.dart';
import 'package:hospital_appp/Specialist/admin_panel.dart';
import 'package:hospital_appp/Specialist/message_specialist.dart';
import 'package:hospital_appp/Specialist/view_work_history.dart';

import 'Dashboard.dart';

class Specialist extends StatefulWidget {
  Specialist({super.key});

  @override
  State<Specialist> createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:   Text("Specialist", style: TextStyle(fontSize: getFontSize(27, context), fontWeight: FontWeight.w500),),
      ),
      body: Padding(padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                        AddNewSpecialist()
                    ));
                  },
                  child:
                actions(
                  context,
                  Icons.add,
                  "Add new specialist"

                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                        AdminPanel()
                    ));
                  },
                  child:
                actions(
                    context,
                    Icons.receipt_long_rounded,
                    "Admin panel"
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                        Messages()
                    ));
                  },
                  child:
                actions(
                    context,
                    Icons.message,
                    "Message specialists"
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                        WorkHistory()
                    ));
                  },
                  child:
                actions(
                    context,
                    Icons.history,
                    "View work histories"
                ),
                ),
              ],
            ),
            SizedBox(height: getFontSize(30, context),),
            Align(
              alignment: Alignment.centerLeft,
              child:
              Text("Activities", style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: getFontSize(20, context)),),),
            SizedBox(height: getFontSize(14, context),),
            Expanded(
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      activity_tile(
                          des: "Dr. Michael had an appointment with a patient",
                          icon_path: Icons.person,
                          date: "12 0ct 2022"
                      ),
                      activity_tile(
                          des: "Dr. Tristan joned your network",
                          icon_path: Icons.public,
                          date: "12 0ct 2022"
                      ),
                      activity_tile(
                          des: "Dr. Michael had an appointment with a patient",
                          icon_path: Icons.person,
                          date: "12 0ct 2022"
                      ),
                      activity_tile(
                          des: "Dr. Tristan joned your network",
                          icon_path: "assets/images/pill.svg",
                          date: "12 0ct 2022"
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


  activity_tile({
    required String des,
    required icon_path, // Pass the profile path
    required String date
  }){
    return  Stack(
        children: [ Container(
          margin: EdgeInsets.symmetric(vertical: getFontSize(6, context)),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: getFontSize(1, context), color: Colors.black12)
      ),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: getFontSize(24, context), horizontal: getFontSize(14, context)),
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Color(0xffE5DEF7))
              ),
              child: icon_path is String ? SvgPicture.asset(icon_path, ) : Icon(icon_path, color: Color(0xff7C5CD6),) ,
            ),
            SizedBox(width: getFontSize(12, context),),
            Container(
              width: getFontSize(190, context),
              child: Text(des, style: TextStyle(fontSize: getFontSize(15, context)),),
            )
          ],
        ),
              ],
            )

      )

    ),
          Positioned(
            right: getFontSize(7, context),
            top: getFontSize(12, context),
            child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Color(0xffE2EDFF),
                    borderRadius: BorderRadius.circular(18)
                ),
                child:
                Text("12 0ct 2022", style: TextStyle(fontSize: getFontSize(10, context), color: Colors.blue),)
            )
        )
        ],
    );
  }

}
actions(
    BuildContext context,
    IconData icon,
    String text
    ) {
  return  Container(
      height: getFontSize(120, context),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centers the items
      children: [
        Container(
          padding: EdgeInsets.all(getFontSize(12, context)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE2EDFF),
          ),
          child: Icon(
            icon,
            size: getFontSize(36, context),
            color: Colors.blue,
          ),
        ),
        SizedBox(height: getFontSize(12, context)),
        SizedBox(
          width: getFontSize(62, context),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getFontSize(13, context),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // Add consistent spacing below the text
        SizedBox(height: getFontSize(16, context)),
      ],
    ),
  );
}

