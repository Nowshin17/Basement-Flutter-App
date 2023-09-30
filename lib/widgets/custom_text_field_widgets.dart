import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        this.controller,
        required this.labelName,
        this.hintTextName,
        this.onChangedFunction,
        required this.textInputType,
        this.onPressed,
        this.icon,
        required this.readOnly,
        this.maxValue,
        this.validator,
        this.textInputAction,
        this.isTrue,
        this.obscureTextTy = false,
        this.initialValue})
      : assert(obscureTextTy != null),
        super(key: key);

  final String labelName;
  final String? hintTextName;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final bool? isTrue;
  final String? initialValue;
  final ValueChanged? onChangedFunction;
  final bool readOnly;
  final Function()? onPressed;

  final FormFieldValidator<String>? validator;
  final IconData? icon;
  final int? maxValue;
  final bool obscureTextTy;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: initialValue,
          readOnly: readOnly,
          controller: controller,
          validator: validator,
          keyboardType: textInputType,
          style: const TextStyle(fontSize: 20),
          // autofocus: true,
          textInputAction: textInputAction,
          inputFormatters: [LengthLimitingTextInputFormatter(maxValue)],
          decoration: InputDecoration(
            hintStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            errorStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            hintText: hintTextName,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(icon),
              onPressed: onPressed,
            ),
          ),
          autofocus: false,
          onChanged: onChangedFunction,
          obscureText: obscureTextTy,
        ),
      ],
    );
  }
}
