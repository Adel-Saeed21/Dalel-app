import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final pacifico400style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: "Pacifico",
  );

  static final pacifico500style18Grey = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
    fontFamily: "Poppins",
  );
  static const poppins500Style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static const poppins300Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static const poppins600style28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle poppins400style12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.deepGrey,
    fontFamily: "Poppins",
  );
}
