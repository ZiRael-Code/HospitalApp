import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_appp/Account/Referral/my_blue_button.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  // Track the expanded state for specific tiles
  bool isCashOnDeliveryExpanded = false;
  bool isBankTransferExpanded = false;

  // Checkbox state for Cash on Delivery
  bool isCashOnDeliverySelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
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
                    SizedBox(width: 90),
                    Text(
                      "Payments",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 40),

                // Cash on Delivery Tile
                buildPaymentOption(
                  title: "Cash on delivery",
                  iconPath: "assets/images/cart.svg",
                  isExpanded: isCashOnDeliveryExpanded,
                  onExpandToggle: () {
                    setState(() {
                      isCashOnDeliveryExpanded = !isCashOnDeliveryExpanded;
                    });
                  },
                  expandedContent: Column(
                    children: [
                      SizedBox(
                          width: 280,
                          child: Divider(
                            color: Colors.grey.shade200,
                          )),
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape:
                                CircleBorder(), // Makes the checkbox circular
                          ),
                        ),
                        child: CheckboxListTile(
                          value: isCashOnDeliverySelected,
                          onChanged: (value) {
                            setState(() {
                              isCashOnDeliverySelected = value ?? false;
                            });
                          },
                          title: Text(
                            "Select this payment method",
                            style: TextStyle(fontSize: 14),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                // Credit/Debit Card Tile
                buildPaymentOption(
                  title: "Credit / Debit card",
                  iconPath: "assets/images/creditcardicon.svg",
                  isExpanded: false, // No expand functionality for now
                  onExpandToggle: null, // Expand button disabled
                  expandedContent: SizedBox.shrink(), // No expanded content
                  showArrowIcon: true, // Add down arrow icon only
                ),
                SizedBox(height: 10),

                // Bank Transfer Tile
                buildPaymentOption(
                  title: "Bank transfer",
                  iconPath: "assets/images/bank.svg",
                  isExpanded: isBankTransferExpanded,
                  onExpandToggle: () {
                    setState(() {
                      isBankTransferExpanded = !isBankTransferExpanded;
                    });
                  },
                  expandedContent: Column(
                    children: [
                      SizedBox(
                          width: 280,
                          child: Divider(
                            color: Colors.grey.shade200,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "First Bank Of Nigeria PLC",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 252,
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 8,
                                right: 8,
                              ),
                              child: Text(
                                "0123456789",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 32,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/copyicon.svg"),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  const Text(
                                    "Copy",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "APPLINIC BANK ACCOUNT",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: MyBlueButton(text: "Continue")),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPaymentOption({
    required String title,
    required String iconPath,
    required bool isExpanded,
    required VoidCallback? onExpandToggle,
    required Widget expandedContent,
    bool showArrowIcon = false, // New parameter to control the arrow icon
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon and text row
                Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          iconPath,
                          width: 10.0,
                          height: 10.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      title,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                // Expand/Collapse button or just arrow icon
                if (onExpandToggle != null || showArrowIcon)
                  IconButton(
                    onPressed: onExpandToggle,
                    icon: Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          ),
          // Expanded content
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: expandedContent,
            ),
        ],
      ),
    );
  }
}
