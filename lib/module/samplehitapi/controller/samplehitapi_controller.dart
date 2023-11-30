import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/samplehitapi/data/model/wilayah_indonesia_model.dart';
import 'package:standard_project/module/samplehitapi/data/repo/samplehitapi_repo.dart';

class SamplehitapiController extends GetxController with SamplehitapiRepo {
  ScrollController scrollController = ScrollController();

  Future<List<WilayahIndonesiaModel>> futureWilayahData() {
    return fetchWilayahData();
  }

  bool isAceh = false;

  bool checkIfIsAceh(String value) {
    if (value.contains("Aceh")) {
      return true;
    } else {
      return false;
    }
  }

  RxBool warna = false.obs;

  bool colorCheck() {
    return warna.value;
  }

  void setColorCheck() {
    warna.value = !warna.value;
  }
}
