import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';


class DropDownOptions {
  final String id;
  final String value;
  DropDownOptions(this.id, this.value);

  @override
  String toString() {
    return '${this.value}';
    // return '${this.id} \n(${this.value})';
  }

}

class CustomSearchDropDownModel extends StatelessWidget {
  CustomSearchDropDownModel(
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
  final List<DropDownOptions> items;
  late final DropDownOptions? selectedItem;

  final FormFieldValidator<DropDownOptions>? validator;
  final Color? fillColor;
  String? selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<DropDownOptions>(
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
        showSelectedItems: true,
        // showSearchBox: items.length>2 ? true:false,
        showSearchBox: searchBox,


      ),

      items: items,

      compareFn: (item, sItem) => item.id == sItem.id,
      onChanged: (DropDownOptions) {
        print(DropDownOptions?.id);
        // selectedItem = Users?.value;
        // onSelected(Users?.id! ?? "");
      },
      selectedItem: selectedItem,
      validator: validator,
    );
  }
}
