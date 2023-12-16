import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    this.borderRadius,
    required this.textColor,
    required this.text
  });

  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
        ),
        child: Text(text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900)),
      ),
    );
  }
}
