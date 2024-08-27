import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged? onChanged;
  final Widget? suffixIcon; // Optional suffix icon widget
  final Widget? prefixIcon; // Optional prefix icon widget

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon, // Prefix icon on the left side
        suffixIcon: suffixIcon, // Optional suffix icon on the right side
        filled: true,
        fillColor: Colors.white, // Field color
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color(0xFFEEEEEE)), // Border color
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white), // Active color
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
    );
  }
}
