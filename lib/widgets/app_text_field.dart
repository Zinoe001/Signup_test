import 'package:flutter/material.dart';
import 'package:sign_up_app/core/utils/colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
  super.key, 
  required this.keyboardType, 
  required this.controller, 
  required this.validator, 
  required this.obscureText,});

  final TextInputType keyboardType;
  final TextEditingController controller;
  final  String? Function(String?)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   borderSide: BorderSide(
        //     style: BorderStyle.solid,
        //     width: 2,
        //     color: kPrimaryColor.shade300,
        //   ),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 2,
            color: kPrimaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 2,
            color: kSecondaryColor,
          ),
        ),
      ),
    );
  }
}
