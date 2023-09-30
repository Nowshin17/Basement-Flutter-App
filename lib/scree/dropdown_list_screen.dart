import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';

import '../model/step_of_content.dart';
import '../widgets/custom_dropDown.dart';
import '../widgets/custom_stepper.dart';

class DropdownListScreen extends StatefulWidget {
  const DropdownListScreen({Key? key}) : super(key: key);

  @override
  State<DropdownListScreen> createState() => _DropdownListScreenState();
}

class _DropdownListScreenState extends State<DropdownListScreen> {
  List<String> selectedList = [];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: 'Dropdown Widget',
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Show With Search",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              CustomDropDown(
                autoValidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return null;
                },
                onSelected: (String? value) {
                  selectedItem = value!;
                },
                selectedItem: selectedItem,
                title: "Test Title",
                items: const [
                  "Test1",
                  "Test2",
                  "Test3",
                  "Test4",
                  "Test5",
                ],
                showSelectedItems: true,
                showSearchBox: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Show Without Search",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              CustomDropDown(
                autoValidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return null;
                },
                onSelected: (String? value) {
                  selectedItem = value!;
                },
                selectedItem: selectedItem,
                title: "Test Title",
                items: const [
                  "Test1",
                  "Test2",
                  "Test3",
                  "Test4",
                  "Test5",
                ],
                showSelectedItems: true,
                showSearchBox: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
