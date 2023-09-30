import 'package:flutter/material.dart';
import '../widgets/custom_AppBar.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({Key? key}) : super(key: key);

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  TextEditingController pickTimeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    ).then((value) {
      if (value != null) {
        setState(() {
          pickTimeController.text = value.format(context).toString();
        });
      }
    });
  }

  final TextEditingController datePickerController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2025),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              splashColor: Colors.black,
              textTheme: const TextTheme(
                subtitle1: TextStyle(color: Colors.black),
                button: TextStyle(color: Colors.black),
              ),
              dialogBackgroundColor: Colors.white,
              colorScheme: const ColorScheme.light(
                      primary: Colors.green,
                      onSecondary: Colors.black,
                      onPrimary: Colors.white,
                      surface: Colors.black,
                      onSurface: Colors.black,
                      secondary: Colors.black)
                  .copyWith(onPrimary: Colors.grey, secondary: Colors.black),
            ),
            child: child ?? const Text(""),
          );
        });
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
        datePickerController.text = selected.toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Date Time Widget",
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: pickTimeController,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Pick Your Time",
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFFD9D9D9)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFFD9D9D9)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      gapPadding: 0.0),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _selectTime(context);
                      },
                      child: Text(pickTimeController.text.isEmpty
                          ? "Pick Time"
                          : "Change Time"),
                    ),
                  ),
                ),
                onTap: () {
                  _selectTime(context);
                },

                //onTap: onTap,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    autofocus: true,
                    readOnly: true,
                    controller: datePickerController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        bottom: 25.0,
                        left: 15.0,
                        right: 15,
                        top: 0.0,
                      ),
                      hintStyle: const TextStyle(fontSize: 14),
                      isDense: true,
                      hintText: 'Year / Month / Day',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFD9D9D9)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFD9D9D9)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gapPadding: 0.0),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          child: Text(pickTimeController.text.isEmpty
                              ? "Pick Date"
                              : "Change Date"),
                        ),
                      ),
                    ),
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
