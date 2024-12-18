import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/success.dart';
import 'package:hospital_appp/onboarding/success_page.dart';

class ConfirmFileUpload extends StatefulWidget {
  const ConfirmFileUpload({super.key});

  @override
  State<ConfirmFileUpload> createState() => _ConfirmFileUploadState();
}

class _ConfirmFileUploadState extends State<ConfirmFileUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 45,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFFE5E5E5),
                            ),
                            child: SvgPicture.asset(
                              'assets/images/back.svg',
                              width: 8.0,
                              height: 15,
                            ),
                          ),
                        ),
                        const SizedBox(width: 110),
                        SvgPicture.asset("assets/images/second.svg")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Confirm file upload",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 256,
                      height: 47,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Confirm that everything you have uploaded is correct.",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Horizontal scrolling
                child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.grey.shade300), // Table border
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DataTable(
                    headingRowColor: MaterialStateProperty.all(
                        Colors.grey.shade200), // Header color
                    dividerThickness: 1, // Divider between rows
                    columnSpacing: 16.0, // Space between columns
                    columns: const [
                      DataColumn(
                        label: SizedBox(
                          width: 200, // Wider Name column
                          child: Text(
                            'Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 120, // Phone number column
                          child: Text(
                            'Phone number',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 120, // Location column
                          child: Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Ngozi William')),
                        DataCell(Text('08123456789')),
                        DataCell(Text('Lagos')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Oluwatosin Adebayo')),
                        DataCell(Text('08123456789')),
                        DataCell(Text('Ibadan')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ngozi William')),
                        DataCell(Text('08123456789')),
                        DataCell(Text('Lagos')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Jonathan Kendall')),
                        DataCell(Text('08123456789')),
                        DataCell(Text('New York')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ngozi William')),
                        DataCell(Text('08123456789')),
                        DataCell(Text('Abuja')),
                      ]),
                    ],
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Success())),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    width: 335,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        border: Border.all(color: Colors.blue.shade50)),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
