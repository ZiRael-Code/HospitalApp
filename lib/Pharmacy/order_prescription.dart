import '../MainScreen/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/Patient/PrescribeDrugs.dart';
import 'package:hospital_appp/Patient/PrescribeDrugsAddDrug.dart';
import 'package:hospital_appp/Patient/add_a_patient.dart';

class OrderPrescription extends StatefulWidget {
  OrderPrescription({super.key});

  @override
  State<OrderPrescription> createState() => _OrderPrescriptionState();
}

class _OrderPrescriptionState extends State<OrderPrescription> {

  TextEditingController controller = TextEditingController();

  final List<Map<String, dynamic>> names = [
    {
      'name':"Richard Ferguson",
      'profile': "assets/images/doc.png",
      'phone_number': "08012345678",
      'location': "Lagos", 
    },
    {
      'name':"Richelle Boluwatife",
      'profile': "assets/images/doc1.png",
      'phone_number': "08012345678",
      'location': "Lagos",
    },
    {
      'name':"Richmond",
      'profile': "assets/images/doc1.png",
      'phone_number': "08012345678",
      'location': "Lagos",
    },
    {
      'name':"Rick",
      'profile': "assets/images/doc.png",
      'phone_number': "08012345678",
      'location': "Lagos",
    },
  ];
  String query = "";
  bool showAddPatient = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredNames = names
        .where((name) => name['name'].toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: getFontSize(35, context),
              height: getFontSize(35, context),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFE5E5E5),
              ),
              child: SvgPicture.asset('assets/images/back.svg',
                width: getFontSize(8.0, context),
                height: getFontSize(15, context),),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child:
              Center(child: Text(
                'Search patient',
                style: TextStyle(
                    fontSize: getFontSize(20, context),
                    fontStyle: FontStyle.normal
                ),
              ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(16),
          child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: getFontSize(10, context)),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        query = value;
                        if (filteredNames.isEmpty){
                          setState(() {
                            showAddPatient = true;
                          });
                        }
                      });
                    },
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      prefixIcon: Icon(Icons.search, color: Colors.grey[300]),
                      suffixIcon: query.isNotEmpty
                          ? IconButton(
                        icon: Icon(Icons.clear, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            query = ""; // Clear the search query
                            controller.text = "";
                          });
                        },
                      )
                          : null,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: getFontSize(15, context)),
                    ),
                  ),
                ),

                SizedBox(height: getFontSize(16, context)),
                Visibility(
                  visible: controller.text.isNotEmpty,
                  child:
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredNames.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> user = filteredNames[index];
                        return ListTile(
                          leading: SizedBox(
                            width: getFontSize(44, context),
                            height: getFontSize(44, context),
                            child: CircleAvatar(radius: 50, backgroundImage: AssetImage(user["profile"])),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user['name'],
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: getFontSize(18, context)),
                              ),
                              Text(
                                "${user['phone_number']} . ${user['location']}",
                                style: TextStyle(fontSize: getFontSize(15, context)),
                              ),
                            ],
                          ),
                          onTap: () {
                            controller.text = user['name'];
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder) => PrescribeDrugsAddDrugs()), // Navigate to Login screen
                            );
                            // Handle item tap (if needed)
                            print("Tapped on ${'name'}");
                          },
                        );
                      },
                    ),
                  ),
                ),
                // Search results


                controller.text.isEmpty ? Column(children: [
                  SizedBox(height: getFontSize(60, context),),
                  SvgPicture.asset('assets/images/searchname.svg'),
                  SizedBox(
                    width: getFontSize(260, context),
                    child: Text(textAlign: TextAlign.center, "Click on the search bar and type in the patients you want to send prescriptions to."),
                  ),
                ]
                )

                    :
                Container(),


                filteredNames.isEmpty && controller.text.isNotEmpty ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("No users were found.", style: TextStyle(fontSize: getFontSize(14, context)),),
                    SizedBox(height: getFontSize(12, context),),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> AddAPatient()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: getFontSize(12.0, context), horizontal: getFontSize(7.0, context)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: getFontSize(16, context),
                            ),
                            SizedBox(width: getFontSize(8, context)),
                            Text(
                              'Add a new patient',
                              style: TextStyle(color: Colors.white, fontSize: getFontSize(12, context)),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                )
                    :
                Container()

              ]
          )
      ),
    );
  }
}