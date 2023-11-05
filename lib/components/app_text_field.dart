import 'package:firstporject/styles/app_color.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(color: Colors.white),
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
