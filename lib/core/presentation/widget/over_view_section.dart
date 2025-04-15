import 'package:bookflick/core/presentation/widget/section_title.dart';
import 'package:bookflick/core/resources/app_strings.dart';
import 'package:bookflick/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class OverviewSection extends StatelessWidget {
  final String overview;

  const OverviewSection({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: AppStrings.description),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          child: ReadMoreText(
            overview,
            trimLines: 5,
            trimMode: TrimMode.Line,
            trimCollapsedText: AppStrings.showMore,
            trimExpandedText: AppStrings.showLess,
            style: Theme.of(context).textTheme.bodyLarge,
            moreStyle: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            lessStyle: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
