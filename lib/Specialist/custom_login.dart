import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Specialist/setup_login.dart';

import '../MainScreen/Dashboard.dart';

class CustomLogin extends StatefulWidget {
  const CustomLogin({super.key});

  @override
  State<CustomLogin> createState() => _CustomLoginState();
}

class _CustomLoginState extends State<CustomLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Container(
            width: getFontSize(35, context),
            height: getFontSize(35, context),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFE5E5E5),
            ),
            child: SvgPicture.asset(
              'assets/images/back.svg',
              width: getFontSize(8.0, context),
              height: getFontSize(15, context),
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Custom login',
              style: TextStyle(
                fontSize: getFontSize(20, context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    ),
      body: Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(height: 20,),
          SvgPicture.asset('assets/images/masterkey.svg'),

          SizedBox(height: 25),

          Text("Custom login setup", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          SizedBox(height: 15),
          Container(
            width: 264,
            child: Text(textAlign: TextAlign.center, style: TextStyle(fontSize: 16,),"Create a custom login mail address and password for your affiliated specialists and pharmacies."),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SetupLogin()));
            },
            child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Setup login", style: TextStyle(color: Colors.white),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios, color: Colors.white,)
              ],
            ),
          ),
          ),
          SizedBox(height: 20,),

          Row(
            children: [
              AutoSizeText(
                "Patients readings",
                style: TextStyle(
                  fontSize: getFontSize(19, context),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
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
