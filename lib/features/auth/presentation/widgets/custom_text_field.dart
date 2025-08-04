import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.focusBorderColor,
    this.enabledBorderColor,
    required this.labelText,
     this.labelTextStyle,
    this.inputTextStyle,
    required this.borderRadius,
    this.isObscure,
    this.suffixIcon, this.onChanged, this.onSubmitted,
  });

  final Color? focusBorderColor;
  final Color? enabledBorderColor;
  final double borderRadius;
  final String labelText;
  final TextStyle? labelTextStyle;
  final TextStyle? inputTextStyle;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
    final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8, top: 24),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        decoration: InputDecoration(
          enabledBorder: _buildBorder(
            borderRadius,
            enabledBorderColor ?? AppColors.grey,
          ),
          focusedBorder: _buildBorder(
            borderRadius,
            focusBorderColor ?? AppColors.deepBrown,
          ),
          labelText: labelText,
          labelStyle: labelTextStyle,
          suffixIcon: suffixIcon,
        ),
        obscureText: isObscure ?? false,
        style: inputTextStyle,
      ),
    );
  }

  OutlineInputBorder _buildBorder(double radius, Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color),
    );
  }
}
