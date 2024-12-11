import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/Specialist/buy_device.dart';
import 'package:hospital_appp/Specialist/custom_login.dart';
import 'package:hospital_appp/Specialist/device_sales1.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the next screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomLogin()));
            },
            child:
            panelMethod(text: "Custom Login",
                imagePath: "assets/images/key.svg",
                bottom: 'Setup custom login for staff'
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the next screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => DeviceSales1()));
            },
            child:  panelMethod(text: "Device sales",
                imagePath:"assets/images/cal.svg",
                bottom: 'Monitor device sales from affiliated partners'
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the next screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => BuyDevice()));
            },
            child:
            panelMethod(text: "Buy device",
                imagePath: "assets/images/bag.svg",
                bottom: 'Order devices in bulk to sell to customers'
            ),
          ),
        ],
      ),
    );
  }
}

panelMethod (
    {

      required String text,
      required String imagePath,
      bottom,
    }){
  return Padding(padding: EdgeInsets.all(15),
    child: Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFE5E5E5),
          width: 0.5,
        ),
      ),
      child: Row(children: [
        Container(
          width: 42,
          height: 42,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFE2EDFF),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(imagePath),
        ),
        SizedBox(width: 25,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF2E2E42),
                fontSize: 16,
              ),
            ),
            bottom != null ? SizedBox(height: 5,) : Container(),
            bottom != null ? Text(
              bottom,
              style: TextStyle(
                color: Color(0xFF959595),
                fontSize: 12,
              ),
            )
                : Container()
          ],),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
      ],),
    ),
  );
}