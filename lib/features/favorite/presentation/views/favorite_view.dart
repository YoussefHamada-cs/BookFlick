import 'package:bookflick/core/presentation/widget/custom_app_bar.dart';

import 'package:bookflick/core/resources/app_strings.dart';
import 'package:bookflick/core/resources/app_values.dart';
import 'package:bookflick/features/favorite/presentation/wigets/body_favorite_view.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.favorite),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p12,
          vertical: AppPadding.p6,
        ),
        child: BodyFavoriteView(),
      ),
    );
  }
}
