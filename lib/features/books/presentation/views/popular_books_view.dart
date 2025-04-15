import 'package:bookflick/features/books/presentation/widget/popular_books_content.dart';
import 'package:flutter/material.dart';
import 'package:bookflick/core/presentation/widget/custom_app_bar.dart';
import 'package:bookflick/core/resources/app_strings.dart';

class PopularBooksView extends StatelessWidget {
  const PopularBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.popularBooks),
      body: const PopularBooksContent(),
    );
  }
}
