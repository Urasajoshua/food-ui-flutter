import 'package:get/get.dart';

import '../modules/available/bindings/available_binding.dart';
import '../modules/available/views/available_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AVAILABLE,
      page: () => const AvailableView(),
      binding: AvailableBinding(),
    ),
  ];
}
