import 'package:flutter/material.dart';
import 'package:tikatik/core/utils/size_utils.dart';
import 'package:tikatik/theme/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.name,
  });

  final void Function()? onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: getVerticalSize(55),
        decoration:  BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(getSize(12))),
          gradient: LinearGradient(colors: [
            Color(0xff744ff9),
            Color(0xff8369de),
            
          ])),
        child: Center(child: Text(name,style: AppStyle.txtMontserratRomanSemiBold14White,)),
      ),
    );
  }
}