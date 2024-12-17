import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/add%20patients/send_invites_successful_page.dart';
import 'package:hospital_appp/components/my_blue_button.dart';

class SendInvitesSpecialists extends StatefulWidget {
  final List<String> selectedContacts;
  const SendInvitesSpecialists({super.key, required this.selectedContacts});

  @override
  State<SendInvitesSpecialists> createState() => _SendInvitesSpecialistsState();
}

class _SendInvitesSpecialistsState extends State<SendInvitesSpecialists> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 30),
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
                  const SizedBox(width: 50),
                  const Center(
                    child: Text(
                      "Select from contact list",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: 310,
                height: 190,
                child: Column(
                  children: [
                    Text(
                      "Send an invite link to a patient, so when the person registers on the app using your link, you will be able to access their details.",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "To download the MyVitalz app, click on this link to download from playstore or app store.",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Link: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "7f4j6n8qN6EDCP-9wd/8ag7...",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 5),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(height: 20),
              // Display the count of selected contacts
              Center(
                child: Text(
                  "${widget.selectedContacts.length} Contacts selected ",
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Display selected contacts in a horizontal scroll view
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.selectedContacts.length,
                  itemBuilder: (context, index) {
                    final contact = widget.selectedContacts[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              // Circle with initials
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    contact[
                                        0], // First letter of contact's name
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              // Close icon for removing contact
                              Positioned(
                                top: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.selectedContacts.removeAt(index);
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          // Contact name
                          SizedBox(
                            width: 70,
                            child: Text(
                              contact,
                              style: const TextStyle(fontSize: 12),
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Image.asset(
                  "assets/images/Rectangle.png",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue[100]),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: SvgPicture.asset(
                            "assets/images/whatsapps.svg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 90,
                        child: Text(
                          "Share on whatsapp",
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue[100]),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: SvgPicture.asset(
                            "assets/images/messangers.svg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 90,
                        child: Text(
                          "Share as text message",
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SendInvitesSuccessPage())),
                  child: const MyBlueButton(text: "Send invites"))
            ],
          ),
        ),
      ),
    );
  }
}
