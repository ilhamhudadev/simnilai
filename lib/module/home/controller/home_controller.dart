import 'package:get/get.dart';
import 'package:standard_project/module/home/data/repo/home_repo.dart';

class HomeController extends GetxController with HomeRepo {
  RxInt angkaDadu = 0.obs;
  RxString statusAngkaDadu = "".obs;

  void tambahAngkaDadu() {
    //
    angkaDadu = angkaDadu + 1;
  }

  void getGanjilGenap() {
    if (angkaDadu.value.isEven) {
      statusAngkaDadu.value = "Genap";
    } else {
      statusAngkaDadu.value = "Ganjil";
    }
  }
}
