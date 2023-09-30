import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    required this.onSelected,
    required this.showSearchBox,
    required this.title,
    required this.items,
    this.autoValidateMode,
    this.validator,
    required this.selectedItem,
    required this.showSelectedItems,
  }) : super(key: key);
  final Function(String? value) onSelected;
  final String title;
  final AutovalidateMode? autoValidateMode;
  final List<String> items;
  final String? selectedItem;

  final FormFieldValidator<String>? validator;
  final bool showSearchBox, showSelectedItems;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      autoValidateMode: autoValidateMode,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 0, height: 50),
          label: Text(
            title,
            style: normalTextStyle,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          border: const OutlineInputBorder(),
        ),
      ),
      popupProps: PopupProps.menu(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
        fit: FlexFit.tight,
        showSelectedItems: showSelectedItems,
        showSearchBox: showSearchBox,
      ),
      items: items,
      onChanged: onSelected,
      selectedItem: selectedItem,
      validator: validator,
    );
  }
}
