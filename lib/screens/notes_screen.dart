import 'package:aplikasikuu/widgets/widgets_profile.dart';
import 'package:flutter/material.dart';

class MyNotesScreen extends StatefulWidget {
  const MyNotesScreen({super.key});

  @override
  State<MyNotesScreen> createState() => _MyNotesScreenState();
}

class _MyNotesScreenState extends State<MyNotesScreen> {
  late int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 37, 39),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Center the title horizontally
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            icon: const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/profile/profilepp.jpg'),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WidgetProfile()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 25, top: 25, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Activity Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
              ),
              const SizedBox(height: 20),
              const Text("Activity Type",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )),
              ListTile(
                title: const Text("Income",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )),
                leading: Radio(
                  groupValue: _value,
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int; // Perbarui nilai _value
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Expenses",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )),
                leading: Radio(
                  groupValue: _value,
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int; // Perbarui nilai _value
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("Amount",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )),
              const TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(255, 63, 63, 63),
                  elevation: 4,
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
