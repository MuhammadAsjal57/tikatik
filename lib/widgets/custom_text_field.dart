import 'package:flutter/material.dart';
import 'package:tikatik/theme/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.appName,
  });

  final TextEditingController? controller;
  final String appName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: AppStyle.txtMontserratRomanRegularWhite1460,
        hintText: appName,
        border: OutlineInputBorder(
          
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.5), width: 2.5
          )
        )
      ),
    );
  }
}