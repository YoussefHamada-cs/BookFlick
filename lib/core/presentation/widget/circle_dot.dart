import 'package:bookflick/core/resources/app_colors.dart';
import 'package:bookflick/core/resources/app_values.dart';
import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p6),
      child: Container(
        width: AppSize.s6,
        height: AppSize.s6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.dotBackground,
        ),
      ),
    );
  }
}
