import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as DioPlugin;
import 'package:standard_project/module/grade/academic/data/model/academicmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';



class academicapiRepo {
  Future<void> repoFunc() async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<List<ApiacademicModel>> fetchacademicData() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio
          .get('https://ibnux.github.io/BMKG-importer/cuaca/wilayah.json');

      debugPrint("Print 2  ${response.data}");

      List<ApiacademicModel> data =
          academicfromjson(response.data);

      debugPrint("Print 3 ");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
