import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:standard_project/module/profile/data/model/modelviewUser.dart';

class ProfileRepo {
  Future<void> repoFunc() async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<MviewUserModel> fetchProfilapi() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      // ignore: no_leading_underscores_for_local_identifiers
      final Dio _dio = Dio();
      final response = await _dio
          .get('https://ibnux.github.io/BMKG-importer/cuaca/wilayah.json');

      debugPrint("tes ${response.data}");

      MviewUserModel data = MviewUserModel.fromJson(response.data[0]);

      debugPrint("print 3");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
