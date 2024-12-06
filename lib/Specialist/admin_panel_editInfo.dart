import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/component/buttons.dart';

import '../MainScreen/Dashboard.dart';
import 'all_specialist.dart';

class AdminPanelEditInfo extends StatefulWidget {
  const AdminPanelEditInfo({super.key});

  @override
  State<AdminPanelEditInfo> createState() => _AdminPanelEditInfoState();
}

class _AdminPanelEditInfoState extends State<AdminPanelEditInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: SvgPicture.asset('assets/images/back.svg',
                width: 8.0,
                height: 15,),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child:
              const Text(
                'Admin panel',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Spacer(),

          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(14),
    child: Column(
      children: [

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.7, color: Colors.black38)
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0
                ,child:
              SvgPicture.asset("assets/images/bigkey.svg"),
              ),
      Container(
            width: double.infinity,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.70),
                borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Custom login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                  ,SizedBox(height: 10,),
                  SizedBox(
                    width: 204,
                    child:  Text( style: TextStyle(color: Colors.black38),"Manage specialists details, their login details and see their work histories on myvitalz."),
                  ),
                  SizedBox(height: 10,),
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
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Edit login info",
                                style: TextStyle(color: Colors.white, fontSize: getFontSize(16, context)),
                              ),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 24,),

                            ]
                        ),

                      )
                  )

                ],
              )
              )
            ],
          ),
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            AutoSizeText(
              "All specialist",
              style: TextStyle(
                fontSize: getFontSize(19, context),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllSpecialist()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child: AutoSizeText('See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: getFontSize(16.0, context),
                    )))
          ],
        ),
        SizedBox(height: 15,),
        Expanded (
            child:
            SingleChildScrollView(child:
            Column(
                children: [
                  request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      type: "Psychologist"
                  ),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      type: "Psychologist"
                  ),request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      type: "Psychologist"
                  ),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      type: "Psychologist"
                  ),
                ]
            )

            )
        )

      ],
    ),
    ),
    );
  }


  request_tile({
    required String name,
    required profile_path, // Pass the profile path
    required String type
  }){
    return Container(
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: getFontSize(55, context),
                  height: getFontSize(55, context),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profile_path),
                  )
              ),
              SizedBox(width: 10,),
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
                      "Requesting to be a patient"
                      ,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert_outlined)
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
