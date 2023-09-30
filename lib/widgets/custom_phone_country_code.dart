import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod_providers/widgetsProvider.dart';
import '../utils/constant/widgetConstant/constant.dart';

class PhoneNumberWithCountry extends ConsumerStatefulWidget {
  PhoneNumberWithCountry({
    required this.title,
    Key? key,
    required this.controller,
  }) : super(key: key);
  final String title;
  final TextEditingController controller;
  @override
  PhoneNumberWithCountryState createState() => PhoneNumberWithCountryState();
}

class PhoneNumberWithCountryState
    extends ConsumerState<PhoneNumberWithCountry> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var widgetsInstance = ref.watch(widgetProvider);
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: normalTextStyle,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        prefixIcon: GestureDetector(
          onTap: () {
            showCountryPicker(
              context: context,
              showPhoneCode:
                  true, // optional. Shows phone code before the country name.
              onSelect: (Country country) {
                widgetsInstance.changeSelectedCountryCode(country);
                print('select country flag: ${country.flagEmoji}');
              },
            );
          },
          child: Container(
            //color: Colors.green,
            width: 140,
            //width: MediaQuery.of(context).size.width-,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: [
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  widgetsInstance.selectedCountry?.flagEmoji == null
                      ? "🇧🇩"
                      : "${widgetsInstance.selectedCountry!.flagEmoji}",
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  widgetsInstance.selectedCountry?.phoneCode == null
                      ? "+880"
                      : "+${widgetsInstance.selectedCountry!.phoneCode}",
                  style: normalTextStyle,
                ),
              ],
            ),
          ),
        ),
        contentPadding: const EdgeInsets.only(left: 130.0),
      ),
    );
  }
}
