import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPraimaryColor,
        decoration: InputDecoration(
          hintText: "Title",
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
