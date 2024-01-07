import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isObscureText;
  const InputTextField(
      {super.key,
      this.labelText,
      this.suffixIcon,
      this.controller,
      this.keyboardType,
      this.isObscureText = false,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText,
        decoration: InputDecoration(
            labelText: labelText,
            fillColor: const Color.fromARGB(255, 245, 249, 249),
            filled: true,
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.grey, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 5, 150, 106), width: 1)),
            hintText: hintText,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
