import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as DioPlugin;

import 'package:standard_project/module/grade/student/data/model/student_model.dart';

class StudenttRepo {
  Future<void> repoFunc() async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<List<ApiStudentModel>> fetchstudentdata() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio
          .get('https://ibnux.github.io/BMKG-importer/cuaca/wilayah.json');

      debugPrint("Print 2  ${response.data}");

      List<ApiStudentModel> data =
          studentfromjson(response.data);

      debugPrint("Print 3 ");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
