import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/confirm_file_upload.dart';
import 'package:hospital_appp/add_specialists/confirm_file_upload_specialists.dart';

class UploadFileSpecialists extends StatefulWidget {
  const UploadFileSpecialists({super.key});

  @override
  State<UploadFileSpecialists> createState() => _UploadFileSpecialistsState();
}

class _UploadFileSpecialistsState extends State<UploadFileSpecialists> {
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
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfirmFileUploadSpecialists())),
            child: Container(
              width: 335,
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blue.shade50,
                  border: Border.all(color: Colors.blue.shade50)),
              child: Center(
                child: Text(
                  "Add manually",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
