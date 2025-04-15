import 'package:bookflick/features/books/domain/entities/book.dart';
import 'package:bookflick/core/resources/app_strings.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookAdapter());
  await Hive.openBox<Book>(AppStrings.kfavoritesBox);
}
