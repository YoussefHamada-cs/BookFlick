import 'package:bookflick/core/presentation/views/main_app.dart';
import 'package:bookflick/core/utils/functions/global_bloc_observer.dart';
import 'package:bookflick/core/utils/functions/init_hive.dart';
import 'package:bookflick/core/utils/setup_services_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize global handlers
  Bloc.observer = AppBlocObserver();

  // Initialize dependencies
  await initHive();
  setupServicesLocator();

  runApp(const BookFlick());
}
