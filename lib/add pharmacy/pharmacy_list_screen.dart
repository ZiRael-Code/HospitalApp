// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'pharmacy_information.dart';

// class Patient {
//   String name;
//   String phoneNumber;
//   String location;

//   Patient({
//     required this.name,
//     required this.phoneNumber,
//     required this.location,
//   });
// }

// class PatientListScreen extends StatefulWidget {
//   final List<Patient> initialPatients;

//   const PatientListScreen({
//     Key? key,
//     required this.initialPatients,
//   }) : super(key: key);

//   @override
//   State<PatientListScreen> createState() => _PatientListScreenState();
// }

// class _PatientListScreenState extends State<PatientListScreen> {
//   late List<Patient> _patients;

//   @override
//   void initState() {
//     super.initState();
//     _patients = widget.initialPatients;
//   }

//   void _addPatient(Patient newPatient) {
//     setState(() {
//       _patients.add(newPatient); // Add the new patient to the list
//     });
//   }

//   void _editPatient(Patient updatedPatient, int index) {
//     setState(() {
//       _patients[index] = updatedPatient; // Update only the specified patient
//     });
//   }

//   void _deletePatient(int index) {
//     setState(() {
//       _patients.removeAt(index); // Remove the patient from the list
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: Column(
//             children: [
//               const SizedBox(height: 40),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () => Navigator.pop(context),
//                     child: Container(
//                       width: 45,
//                       height: 45,
//                       padding: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: const Color(0xFFE5E5E5),
//                       ),
//                       child: SvgPicture.asset(
//                         'assets/images/back.svg',
//                         width: 8.0,
//                         height: 15,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 70),
//                   const Text(
//                     "Patient List",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 40),

//               // ListView.builder to show patients
//               Expanded(
//                 child: _patients.isEmpty
//                     ? const Center(
//                         child: Text(
//                           "No patients added yet. Add patients to see them here.",
//                         ),
//                       )
//                     : ListView.builder(
//                         itemCount: _patients.length,
//                         itemBuilder: (context, index) {
//                           final patient = _patients[index];
//                           return Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   const CircleAvatar(
//                                     radius: 25,
//                                     backgroundImage: AssetImage(
//                                         'assets/images/girl.png'), // Add a default profile image here
//                                   ),
//                                   const SizedBox(width: 15),
//                                   Expanded(
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           patient.name,
//                                           style: const TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 16,
//                                           ),
//                                         ),
//                                         Text(
//                                           "${patient.phoneNumber} . ${patient.location}",
//                                           style: const TextStyle(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Row(
//                                     children: [
//                                       // Edit Icon Button
//                                       Container(
//                                         width: 33.79,
//                                         height: 33.79,
//                                         decoration: BoxDecoration(
//                                             color: Colors.blue[200],
//                                             shape: BoxShape.circle),
//                                         child: Center(
//                                           child: IconButton(
//                                             icon: const Icon(Icons.edit,
//                                                 color: Colors.blue),
//                                             onPressed: () async {
//                                               final updatedPatient =
//                                                   await Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       PatientsInformation(
//                                                     patient:
//                                                         patient, // Pass current patient
//                                                   ),
//                                                 ),
//                                               );
//                                               if (updatedPatient != null &&
//                                                   updatedPatient is Patient) {
//                                                 _editPatient(
//                                                     updatedPatient, index);
//                                               }
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       // Delete Icon Button
//                                       Container(
//                                         width: 33.79,
//                                         height: 33.79,
//                                         decoration: BoxDecoration(
//                                             color: Colors.red[200],
//                                             shape: BoxShape.circle),
//                                         child: Center(
//                                           child: IconButton(
//                                             icon: const Icon(Icons.delete,
//                                                 color: Colors.red),
//                                             onPressed: () {
//                                               _deletePatient(index);
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 width: 350,
//                                 child: Divider(
//                                   color: Colors.grey[200],
//                                   thickness: 1,
//                                   height: 20,
//                                 ),
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//               ),

//               // Add Patient Button
//               GestureDetector(
//                 onTap: () async {
//                   final newPatient = await Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const PatientsInformation(),
//                     ),
//                   );

//                   if (newPatient != null && newPatient is Patient) {
//                     _addPatient(newPatient); // Correctly add the new patient
//                   }
//                 },
//                 child: Container(
//                   width: 192,
//                   height: 52,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.add_circle_outline, color: Colors.white),
//                       SizedBox(width: 10),
//                       Text(
//                         "Add patient(s)",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
