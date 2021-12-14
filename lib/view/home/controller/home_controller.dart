// ignore_for_file: prefer_final_fields, unnecessary_null_comparison, unnecessary_overrides, unused_field

import 'package:animated_bar_fab/view/home/repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository _repository;
  var _mainFabIsClosed = true.obs;
  var _otherFabIsClosed = true.obs;
  var _tabIndex = 0.obs;

  HomeController(this._repository) : assert(_repository != null);

  set mainFabIsClosed(value) {
    _mainFabIsClosed.value = value;
  }

  get mainFabIsClosed => _mainFabIsClosed.value;

  set otherFabIsClosed(value) {
    _otherFabIsClosed.value = value;
  }

  get otherFabIsClosed => _otherFabIsClosed.value;

  set tabIndex(value) {
    _tabIndex.value = value;
  }

  get tabIndex => _tabIndex.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

/*
  get userName => _userName.value;

  set userName(value) => _userName.value = value;

  getUser() async {
    var result = await _repository.getUser();
    _userName.value = result.name!;
  }

  changeValue() {
    userName = "Template";
  }

  saveUser() async {
    HiveManager.setStringValue('user', userName);
  }

  getFromHiveManager() {
    return HiveManager.getStringValue('user');
  }*/
}
