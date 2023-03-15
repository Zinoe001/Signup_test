import 'package:flutter/material.dart';
import 'package:sign_up_app/core/utils/colors.dart';
import 'package:sign_up_app/core/utils/text.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: AppText.body2(
          "Next",
          color: Colors.white,
        )),
      ),
    );
  }
}
