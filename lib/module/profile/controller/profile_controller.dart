import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/profile/data/model/modelviewUser.dart';
import 'package:standard_project/module/profile/data/repo/profile_repo.dart';

class ProfileController extends GetxController with ProfileRepo {
  ScrollController scrollController = ScrollController();

  // ignore: non_constant_identifier_names
  Future<MviewUserModel> futureProfilData() {
    return fetchProfilapi();
  }
}
