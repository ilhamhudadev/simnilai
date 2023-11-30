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

  Future<StudentKHSModel> fetchstudentdata() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio
          .get('http://localhost:3000/api/mahasiswa/nilai/khs/1/20307063');

      debugPrint("Print 2  ${response.data}");

      StudentKHSModel data = StudentKHSModel.fromJson(response.data);

      debugPrint("Print 3 ");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
