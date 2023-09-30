import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'custom_sqfLite_insert.dart';

class LocalDatabaseScreen extends StatefulWidget {
  const LocalDatabaseScreen({super.key});

  @override
  State<LocalDatabaseScreen> createState() => _LocalDatabaseScreenState();
}

class _LocalDatabaseScreenState extends State<LocalDatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _fatherNameController = TextEditingController();
    final TextEditingController _motherNameController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    List<Map<String, dynamic>> _privatelist = [];

    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: 'Local Database'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _fatherNameController,
              decoration: const InputDecoration(labelText: "Father's Name"),
            ),
            TextField(
              controller: _motherNameController,
              decoration: const InputDecoration(labelText: "Mother's Name"),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String fatherName = _fatherNameController.text;
                String motherName = _motherNameController.text;
                String phoneNumber = _phoneController.text;

                // print(name);
                // print(fatherName);
                // print(motherName);
                // print(phoneNumber);
                
                _nameController.clear();
                _fatherNameController.clear();
                _motherNameController.clear();
                _phoneController.clear();
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
