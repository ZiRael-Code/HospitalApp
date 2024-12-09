import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_appp/Patient/PrescribeDrugs.dart';
import 'package:hospital_appp/Patient/PrescribeDrugsAddDrug.dart';
import 'package:hospital_appp/Patient/add_a_patient.dart';
import 'package:hospital_appp/Pharmacy/order_prescription_summary.dart';

class SearchForAvailableDrug extends StatefulWidget {
  SearchForAvailableDrug({super.key});

  @override
  State<SearchForAvailableDrug> createState() => _SearchForAvailableDrugState();
}

class _SearchForAvailableDrugState extends State<SearchForAvailableDrug> {

  TextEditingController controller = TextEditingController();

  final List<Map<String, dynamic>> names = [
    {
      'drug_name':"Paracetamol",
      'pharmacy_name':"Randy Blue pharmacy",
      'type': "Tablet",
      'price': "N500",
    },
    {
      'drug_name':"Panadol extra",
      'pharmacy_name':"Oregon pharmacy",
      'type': "Tablet",
      'price': "N500",
    },
    {
      'drug_name':"Paracetamol",
      'pharmacy_name':"Randy Blue pharmacy",
      'type': "Tablet",
      'price': "N500",
    },
    {
      'drug_name':"Panadol extra",
      'pharmacy_name':"Oregon pharmacy",
      'type': "Tablet",
      'price': "N500",
    },
  ];
  String query = "";
  bool showAddPatient = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredNames = names
        .where((name) => name['drug_name'].toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Scaffold(
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
                  const Center(child: Text(
                    'Search for drugs',
                    style: TextStyle(
                        fontSize: 20,
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
                Row(
          children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width * 0.75,
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
                      prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
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
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color:  Color(0xFFE5E5E5),
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.filter_list),
            )
          ],
                ),

                SizedBox(height: 16),
                Visibility(
                  visible: controller.text.isNotEmpty,
                  child:
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredNames.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> drug = filteredNames[index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 16),
                            child: ListTile(
                          leading:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                drug['drug_name'],
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              SizedBox(height: 7,),
                              Text(
                                "${drug['type']}",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("${drug['price']}", style: TextStyle(fontSize: 16, color: Colors.blue),),
                              SizedBox(height: 7,),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.grey.shade200
                                ),
                                child: Text("${drug['pharmacy_name']}"),
                              )
                            ],
                          ),
                          onTap: () {
                            controller.text = drug['drug_name'];
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder) => OrderPrescriptionSummary()), // Navigate to Login screen
                            );
                            // Handle item tap (if needed)
                            print("Tapped on ${'name'}");
                          },
                        )
                        );
                      },
                    ),
                  ),
                ),
                // Search results


                controller.text.isEmpty ? Column(children: [
                  SizedBox(height: 60,),
                  SvgPicture.asset('assets/images/searchname.svg'),
                  SizedBox(
                    width: 260,
                    child: Text(textAlign: TextAlign.center, "Do a global search to see which pharmacy has the drug you’re looking for."),
                  ),
                ]
                )

                    :
                Container(),


                filteredNames.isEmpty && controller.text.isNotEmpty ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("No users were found.", style: TextStyle(fontSize: 14),),
                    SizedBox(height: 12,),
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
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 7.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Add a new patient',
                              style: TextStyle(color: Colors.white, fontSize: 12),
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
