import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_field_widgets.dart';

class FormValidationScreen extends StatefulWidget {
  const FormValidationScreen({super.key});

  @override
  State<FormValidationScreen> createState() => _FormValidationScreenState();
}

class _FormValidationScreenState extends State<FormValidationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Form Validation",
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextField(
                  labelName: 'Name',
                  textInputType: TextInputType.text,
                  readOnly: false,
                  validator: (String? data) {
                    if (data!.isEmpty) {
                      return "Name need";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 15),
                    child: const Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
