import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';

class CustomSearchDropDown extends StatelessWidget {
  CustomSearchDropDown(
      {Key? key,
      required this.onSelected,
      required this.searchBox,
      this.buttonName,
      required this.title,
      this.child,
      this.icons,
      this.style,
      this.validator,
      required this.items,
      this.selectedItem,
      this.fillColor,
      this.autovalidateMode})
      : super(key: key);
  final Function(String value) onSelected;
  final String? buttonName;
  final String title;
  final AutovalidateMode? autovalidateMode;
  final IconData? icons;
  final Widget? child;
  final ButtonStyle? style;
  final bool searchBox;
  final List<String> items;
  final String? selectedItem;

  final FormFieldValidator<String>? validator;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      autoValidateMode: autovalidateMode,
      // validator: (val) => val == null ? 'Loading ..' : null,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          fillColor: fillColor,
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
          // hintText: "Select item",
          border: const OutlineInputBorder(),
        ),
      ),
      popupProps: PopupProps.menu(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),

        fit: FlexFit.tight,

        //constraints: BoxConstraints.tight(const Size.fromHeight(200)),
        //constraints: BoxConstraints.loose(const Size(400,300)),
        showSelectedItems: true,
        // showSearchBox: items.length>20 ? true:false,
        showSearchBox: searchBox,

        //items.length>20 ? true:false ,
      ),

      items: items,
      //   .map((item) =>
      // DropdownMenuItem<dynamic>(
      //   value: item['id'].toString(),
      //   child: null,
      //   ),
      // ).toList(),

      onChanged: (value) {
        onSelected(value ?? "");
      },
      selectedItem: selectedItem,
      validator: validator,
    );
  }
}
