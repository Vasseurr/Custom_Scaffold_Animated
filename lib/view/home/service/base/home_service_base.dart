import 'package:animated_bar_fab/view/home/model/user.dart';

abstract class HomeServiceBase {
  Future<User> getUser();
}
