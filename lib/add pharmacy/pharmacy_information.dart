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
              const SizedBox(height: 40),
              Row(
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
              const SizedBox(height: 40),

              // Patient full name
              const Text(
                "Patient full name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Janet Okoli",
                controller: _nameController,
              ),
              const SizedBox(height: 20),

              // Patient phone number
              const Text(
                "Patient phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g 08011112233",
                controller: _phoneNumberController,
              ),
              const SizedBox(height: 20),

              // Gender and Age
              const Row(
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
                  SizedBox(width: 30),
                  Column(
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
                ],
              ),
              const SizedBox(height: 20),

              // Blood group and Genotype
              const Row(
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
                  SizedBox(width: 30),
                  Column(
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
                ],
              ),
              const SizedBox(height: 20),

              // Location
              const Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
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
                child: MyBlueButton(
                    text: widget.patient == null ? "Add Patient" : "Save"),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
