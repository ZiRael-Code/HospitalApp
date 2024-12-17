import 'package:flutter/material.dart';

class InviteThroughLink extends StatefulWidget {
  const InviteThroughLink({super.key});

  @override
  State<InviteThroughLink> createState() => _InviteThroughLinkState();
}

class _InviteThroughLinkState extends State<InviteThroughLink> {
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
            Center(
              child: Container(
                width: 220,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(child: Text("Select from contact list")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
