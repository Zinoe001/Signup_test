import 'package:flutter/material.dart';
import 'package:sign_up_app/core/utils/text.dart';
import 'package:sign_up_app/widgets/app_text_field.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.title,
      required this.keyboardType,
      required this.controller,
      this.validator,
      this.obscureText = false});
  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.body1(title),
          AppTextField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              validator: validator,)
        ],
      ),
    );
  }
}
