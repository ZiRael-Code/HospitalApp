import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/components/my_blue_button.dart';
import 'package:hospital_appp/components/my_textfield.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isToggled = false; // Track toggle state
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 40),
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
                      width: 12.0,
                      height: 12.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 90),
                const Text(
                  "Payments",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Cardholder full name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const MyTextfield(
                hinttext: "Input name on card", obscuretext: false),
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Card number",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 10,
            ),
            const MyTextfield(
                hinttext: "xxxx xxxx xxxx xxxx", obscuretext: false),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Expiry date",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 150,
                        child:
                            MyTextfield(hinttext: "00/00", obscuretext: false)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "CVV",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 150,
                        child:
                            MyTextfield(hinttext: "0000", obscuretext: false)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Save this card for future payments",
                  style: TextStyle(fontSize: 14),
                ),
                Switch(
                  value: isToggled,
                  onChanged: (value) {
                    setState(() {
                      isToggled = value;
                    });
                  },
                  activeColor: Colors.blue, // Color when toggled on
                  inactiveThumbColor: Colors.grey, // Color when toggled off
                  inactiveTrackColor:
                      Colors.grey.shade300, // Track color when off
                ),
              ],
            ),
            Spacer(),
            MyBlueButton(text: "Proceed"),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
