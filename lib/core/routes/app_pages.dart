import 'package:animated_bar_fab/view/home/bindings/home_binding.dart';
import 'package:animated_bar_fab/view/home/ui/home.dart';
import 'package:animated_bar_fab/view/home/ui/mail.dart';
import 'package:animated_bar_fab/view/home/ui/menu.dart';
import 'package:animated_bar_fab/view/home/ui/profile_page.dart';
import 'package:animated_bar_fab/view/home/ui/star.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => const Home(), binding: HomeBinding()),
    GetPage(
        name: Routes.STAR,
        page: () => const StarPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.MAIL,
        page: () => const MailPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.PROFILE,
        page: () => const ProfilePage(),
        binding: HomeBinding()),
    GetPage(name: Routes.MENU, page: () => const Menu()),
  ];
}
