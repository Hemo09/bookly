import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      this.tap,
      this.textColor,
      this.backgroundColor});
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? tap;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: MaterialButton(
        onPressed: tap,
        child: Text(text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            )),
      ),
    );
  }
}
