import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is required";
          } else {
            return null;
          }
        },
        cursorColor: kPraimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(color: kPraimaryColor),
        ));
  }

  OutlineInputBorder buildborder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
