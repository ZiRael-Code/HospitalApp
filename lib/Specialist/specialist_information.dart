
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/responsive_method.dart';

import '../Patient/PrescribeDrugsViewAll.dart';


class SpecialistInformation extends StatelessWidget {
  SpecialistInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFE5E5E5),
                ),
                child: SvgPicture.asset('assets/images/back.svg',
                  width: 8.0,
                  height: 15,),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                child:
                Text(
                  'Prescribe drugs',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Spacer(),

            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.only(top: 12, left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                inputField(
                  label: 'Patient full name',
                  text: 'Janet Okoli ',
                  maxLength: 1,
                  hint: "",
                  leftIcon: false,
                ),
                inputField(
                  label: 'Patient phone number',
                  text: '081111222333',
                  maxLength: 1,
                  hint: "",
                  leftIcon: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputField(
                        label: 'Gender',
                        text: 'Male',
                        width: getHalfWidthScreenSize(150.0, 17, context),
                        leftIcon: false,
                        hint: "",
                        maxLength: 1
                    ),
                    inputField(
                        label: 'Age',
                        text: '34',
                        leftIcon: false,
                        width: getHalfWidthScreenSize(150.0, 17, context),
                        hint: "",
                        maxLength: 1
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputField(
                        label: 'Blood group',
                        text: 'O+',
                        width: getHalfWidthScreenSize(150.0, 17, context),
                        hint: "",
                        leftIcon: false,
                        maxLength: 1
                    ),
                    inputField(
                        label: 'Genotype',
                        text: 'AS',
                        leftIcon: false,
                        hint: "",
                        width: getHalfWidthScreenSize(150.0, 17, context),
                        maxLength: 1
                    ),
                  ],
                ),
                inputField(
                    label: 'Location',
                    text: 'Lagos',
                    hint: "",
                    leftIcon: false,
                    maxLength: 1
                ),
                inputField(
                  label: 'Medical history',
                  hint: 'No medical history available yet' ,
                  text: "",
                  maxLength: 3,
                  leftIcon: false,
                ),
                SizedBox(height: 2,),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            )
        )
        )
    );
  }

  inputField({
    required String label,
     text,
    hint,
    required int maxLength,
    required bool leftIcon,
    width
  }) {
    TextEditingController controller = TextEditingController();
    controller.text = text;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16),),
        SizedBox(height: 10,),
        SizedBox(
          width: width,
        child:
        TextField(
          controller: controller.text.isEmpty ? TextEditingController() : controller,
          decoration: InputDecoration(
            hintText: text.toString().isEmpty ? "" : hint,
            hintStyle: TextStyle(color: Colors.black26),
            filled: true,
            fillColor: Colors.grey[200], // Light gray background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Circular border radius
              borderSide: BorderSide(
                color: Colors.grey.shade300, // Light gray border
                width: 1, // Border thickness
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1.5,
              ),
            ),
            suffixIcon: leftIcon
                ? Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black45,
            )
                : null, // Optional suffix icon
            constraints: BoxConstraints(
              maxWidth: 331, // Set the fixed width for the TextField
            ),
          ),
          maxLines: maxLength, // Ensures single-line input
        ),
        ),

        SizedBox(height: 15,), // Additional vertical space between fields
      ],
    );
  }
}

inputField2({
  required String label,
  required String hint,
  required bool leftIcon,
  width
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(height: 10),
      Container(
        width: width, // Set the fixed width
        decoration: BoxDecoration(
          color: Colors.grey[200], // Light gray background
          borderRadius: BorderRadius.circular(12), // Circular border radius
          border: Border.all(
            color: Colors.grey.shade300, // Light gray border
            width: 1, // Border thickness
          ),
        ),
        child: Row(
          children: [

            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.black26),
                  border: InputBorder.none, // Remove default TextField border
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: leftIcon ? 8 : 14,
                  ), // Add padding inside the container
                ),
              ),
            ),
            if (leftIcon) // Optionally display the suffix icon
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black45,
                ),
              ),
          ],
        ),
      ),
      SizedBox(height: 15), // Additional vertical space between fields
    ],
  );
}
