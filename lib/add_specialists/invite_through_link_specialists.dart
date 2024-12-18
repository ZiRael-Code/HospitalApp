import 'package:flutter/material.dart';
import 'package:hospital_appp/add%20patients/select_from_contact_list.dart';
import 'package:hospital_appp/add%20pharmacy/select_from_contact_list_pharmacy.dart';
import 'package:hospital_appp/add_specialists/select_from_contactlist_specialists.dart';

class InviteThroughLinkSpecialists extends StatefulWidget {
  const InviteThroughLinkSpecialists({super.key});

  @override
  State<InviteThroughLinkSpecialists> createState() =>
      _InviteThroughLinkSpecialistsState();
}

class _InviteThroughLinkSpecialistsState
    extends State<InviteThroughLinkSpecialists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              width: 305,
              child: Column(
                children: [
                  Text(
                    "Send an invite link to your in house or affiliated external pharmacy (if any) so when he registers on the app using your link, you will be able to access his drugs and send prescriptions to him. If he is already on the platform, he will only need to accept you as a referring physician. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "To download the MyVitalz app, click on this link to download from playstore or app store.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text("Link: "),
                    Text(
                      "7f4j6n8qN6EDCP-9wd/8ag7...",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 79,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 14,
                          height: 14,
                          child: Image.asset(
                            "assets/images/Union.png",
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("Copy")
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SelectFromContactListSpecialists())),
              child: Center(
                child: Container(
                  width: 220,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(child: Text("Select from contact list")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}