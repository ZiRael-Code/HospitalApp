import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add_specialists/success_page_specialists.dart';

class ConfirmFileUploadSpecialists extends StatefulWidget {
  const ConfirmFileUploadSpecialists({super.key});

  @override
  State<ConfirmFileUploadSpecialists> createState() =>
      _ConfirmFileUploadSpecialistsState();
}

class _ConfirmFileUploadSpecialistsState
    extends State<ConfirmFileUploadSpecialists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
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
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Confirm file upload",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
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
              SizedBox(
                height: 20,
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
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuccessPageSpecialists())),
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
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
