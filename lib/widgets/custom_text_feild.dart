import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.lable,
    required this.icon,
    required this.controller,
    required this.onChaged,
  }) : super(key: key);

  final String lable;
  final IconData icon;
  final TextEditingController controller;
  final Function(String) onChaged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: TextField(
        onChanged: onChaged,
        controller: controller,
        decoration: InputDecoration(
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: lable,
          hintStyle: AppFonts.s16w400.copyWith(color: Colors.white),
          suffixIcon: Icon(
            icon,
            color: AppColor.blue,
          ),
        ),
      ),
    );
  }
}
