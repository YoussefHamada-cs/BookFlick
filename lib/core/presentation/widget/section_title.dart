import 'package:bookflick/core/resources/app_values.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppPadding.p16,
        left: AppPadding.p16,
        top: AppPadding.p8,
        bottom: AppPadding.p4,
      ),
      child: Text(title, style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
