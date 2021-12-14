import 'package:animated_bar_fab/view/home/model/user.dart';
import 'package:animated_bar_fab/view/home/service/base/home_service_base.dart';
import 'package:animated_bar_fab/view/home/service/home_service.dart';

class HomeRepository with HomeServiceBase {
  final HomeService _homeService;

  HomeRepository(this._homeService) : assert(_homeService != null);

  @override
  Future<User> getUser() async {
    return _homeService.getUser();
  }
}
