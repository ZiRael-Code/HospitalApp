import 'package:flutter/material.dart';
import 'package:hospital_appp/Account/PaymentHistory.dart';
import 'package:hospital_appp/Specialist/ChangeLocation.dart';
import 'package:hospital_appp/Specialist/SelectPickupLocation.dart';
import 'package:hospital_appp/Specialist/SelectYourLocation.dart';
import 'package:hospital_appp/Specialist/card_details.dart';
import 'package:hospital_appp/Specialist/checkout.dart';
import 'package:hospital_appp/Specialist/deviced_ordered.dart';
import 'package:hospital_appp/Specialist/payments.dart';
import 'package:hospital_appp/Specialist/success_delivery.dart';
import 'package:hospital_appp/add%20patients/add_patients.dart';
import 'package:hospital_appp/add%20patients/add_patients_main.dart';
import 'package:hospital_appp/add%20patients/confirm_file_upload.dart';
import 'package:hospital_appp/add%20patients/patients_information.dart';
import 'package:hospital_appp/add%20patients/select_from_contact_list.dart';
import 'package:hospital_appp/add%20patients/set_network.dart';
import 'package:hospital_appp/add%20patients/success.dart';
import 'package:hospital_appp/add%20pharmacy/confirm_file_upload_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/invite_through_link_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/select_from_contact_list_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/send_invites_successful_page_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/set_network_pharmacy.dart';
import 'package:hospital_appp/add%20pharmacy/success_pharmacy.dart';
import 'package:hospital_appp/add_specialists/add_specialists.dart';
import 'package:hospital_appp/add_specialists/confirm_file_upload_specialists.dart';
import 'package:hospital_appp/add_specialists/setup_network_specialists.dart';
import 'package:hospital_appp/add_specialists/success_page_specialists.dart';
import 'package:hospital_appp/decive%20distribution/destribution_onboarding1.dart';
import 'package:hospital_appp/decive%20distribution/destributor_id.dart';
import 'package:hospital_appp/decive%20distribution/request_devices.dart';
import 'package:hospital_appp/home%20delivery/set_your_location.dart';
import 'package:hospital_appp/onboarding/onboarding1.dart';
import 'package:hospital_appp/onboarding/set_up_network_main.dart';
import 'package:hospital_appp/onboarding/splash_screen.dart';
import 'add pharmacy/add_pharmacy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Loader(),
    );
  }
}

class Loader extends StatefulWidget {
  Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    super.initState();
    // Adding a delay of 2 seconds
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
