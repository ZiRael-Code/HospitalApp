import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../component/messages_tile.dart';
import 'Chat.dart';

class Messages extends StatefulWidget {
  Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Janet Okoli",
      "imagePath": "assets/images/janet.jpg",
      "unreadCount": 1,
      "status": "online",
    },
    {
      "name": "Adejayo Johnson",
      "imagePath": "assets/images/adejayo.jpg",
      "unreadCount": 0,
      "status": "offline",
    },
    {
      "name": "Dr. Nelson Yang",
      "imagePath": "assets/images/yang.jpg",
      "unreadCount": 2,
      "status": "online",
    },
    {
      "name": "Adejayo Johnson",
      "imagePath": "assets/images/adejayo.jpg",
      "unreadCount": 0,
      "status": "offline",
    },
    {
      "name": "Dr. Nelson Yang",
      "imagePath": "assets/images/yang.jpg",
      "unreadCount": 2,
      "status": "online",
    },
  ];

  List<Map<String, dynamic>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
  }

  void _filterContacts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredContacts = contacts;
      } else {
        filteredContacts = contacts
            .where((contact) =>
                contact["name"].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 35,
                      height: 35,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFE5E5E5),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/back.svg',
                        width: 8.0,
                        height: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Container(
                height: 50,
                padding: EdgeInsets.all(4),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  onChanged: _filterContacts,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey[400],
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredContacts.length,
                  itemBuilder: (context, index) {
                    final contact = filteredContacts[index];
                    return MessagesTile(
                      name: contact["name"],
                      imagePath: contact["imagePath"],
                      unreadCount: contact["unreadCount"],
                      status: contact["status"],
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chat(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}