import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      value: checked,
      checkColor: Colors.white,
      activeColor: AppColors.deepBrown,
      side: BorderSide(color: AppColors.grey),
      onChanged: (newValue) {
        setState(() {
          checked = newValue!;
        });
      },
    );
  }
}
