import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/patients_list_screen.dart';
import 'package:hospital_appp/components/my_blue_button.dart';
import 'package:hospital_appp/components/patients_textfield.dart';

class PatientsInformation extends StatefulWidget {
  final Patient? patient;
  const PatientsInformation({super.key, this.patient});

  @override
  State<PatientsInformation> createState() => _PatientsInformationState();
}

class _PatientsInformationState extends State<PatientsInformation> {
  late TextEditingController _nameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _locationController;

  @override
  void initState() {
    super.initState();

    // If editing, pre-fill the fields with existing patient data
    _nameController = TextEditingController(text: widget.patient?.name ?? '');
    _phoneNumberController =
        TextEditingController(text: widget.patient?.phoneNumber ?? '');
    _locationController =
        TextEditingController(text: widget.patient?.location ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _savePatient() {
    final String name = _nameController.text.trim();
    final String phoneNumber = _phoneNumberController.text.trim();
    final String location = _locationController.text.trim();

    if (name.isNotEmpty && phoneNumber.isNotEmpty && location.isNotEmpty) {
      final Patient newPatient = Patient(
        name: name,
        phoneNumber: phoneNumber,
        location: location,
      );

      Navigator.pop(context, newPatient); // Return the patient object
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 35,
                        height: 35,
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
                    const SizedBox(width: 60),
                    const Text(
                      "Patients information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),

              // Patient full name
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: const Text(
                  "Patient full name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: PatientsTextfield(
                  height: 50,
                  width: 335,
                  hinttext: "e.g Janet Okoli",
                  controller: _nameController,
                ),
              ),

              // Patient phone number
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Patient phone number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: PatientsTextfield(
                  height: 50,
                  width: 335,
                  hinttext: "e.g 08011112233",
                  controller: _phoneNumberController,
                ),
              ),

              // Gender and Age
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        PatientsTextfield(
                          height: 50,
                          width: 157,
                          hinttext: "e.g Female",
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          PatientsTextfield(
                            height: 50,
                            width: 157,
                            hinttext: "e.g 34",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Blood group and Genotype
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blood group",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        PatientsTextfield(
                          height: 50,
                          width: 157,
                          hinttext: "O+",
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Genotype",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          PatientsTextfield(
                            height: 50,
                            width: 157,
                            hinttext: "AS",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Location
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Lagos",
                controller: _locationController,
              ),
              const SizedBox(height: 20),

              // Medical history
              const Text(
                "Medical history",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const PatientsTextfield(
                height: 160,
                width: 335,
                hinttext: "No medical history available yet",
              ),
              const SizedBox(height: 60),

              // Add Patient Button
              GestureDetector(
                onTap: () {
                  if (_nameController.text.isNotEmpty &&
                      _phoneNumberController.text.isNotEmpty &&
                      _locationController.text.isNotEmpty) {
                    // Create a new patient
                    final newPatient = Patient(
                      name: _nameController.text,
                      phoneNumber: _phoneNumberController.text,
                      location: _locationController.text,
                    );

                    // Navigate to PatientListScreen with the new patient
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PatientListScreen(
                          initialPatients: [newPatient],
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please fill in all fields"),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MyBlueButton(
                      text: widget.patient == null ? "Add Patient" : "Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
