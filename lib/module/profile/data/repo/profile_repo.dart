import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:standard_project/module/profile/data/model/student_profile_model.dart';

class ProfileRepo {
  Future<void> repoFunc() async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<StudentProfileModel> fetchProfilapi() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      // ignore: no_leading_underscores_for_local_identifiers
      final Dio _dio = Dio();
      final response =
          await _dio.get('http://localhost:3000/api/student/user/15301119');

      debugPrint("tes ${response.data}");

      StudentProfileModel data = StudentProfileModel.fromJson(response.data);

      debugPrint("print 3");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
