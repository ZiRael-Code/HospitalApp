import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({super.key});

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 284,
              height: 47,
              child: Text(
                textAlign: TextAlign.center,
                "Upload all your patients and their details to sync with myvitalz.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 183,
            height: 183,
            decoration:
                BoxDecoration(color: Colors.blue[50], shape: BoxShape.circle),
            child: Container(
              height: 150,
              child: SvgPicture.asset("assets/images/report.svg"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 284,
              height: 47,
              child: Text(
                textAlign: TextAlign.center,
                "Click to upload a file containing all your patient details.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 335,
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue.shade50)),
            child: Center(
              child: Text(
                "Add manually",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
