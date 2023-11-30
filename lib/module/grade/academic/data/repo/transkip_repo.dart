import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as DioPlugin;
import 'package:standard_project/core/variables/app_constant.dart';
import 'package:standard_project/module/grade/academic/controller/transkip_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/transkipmodel.dart';
import 'package:get/get.dart';

class TranscriptapiRepo {
  Future<void> repoFunc() async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<StudentTranscriptModel> fetchtranskipData() async {
    debugPrint("Print 1");
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio
          .get('http://localhost:3000/api/akademik/nilai/transkript/20307063');

      debugPrint("Print 2  ${response.data}");

      StudentTranscriptModel data =
          StudentTranscriptModel.fromJson(response.data);

      debugPrint("Print 3 ");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }

  Future<void> getTranscriptData() async {
    debugPrint("Print 1");
    TranscriptApiController controller = Get.put(TranscriptApiController());
    var searchText = controller.searchController.value.text;
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio.get(
          'http://localhost:3000/api/akademik/nilai/transkript/${searchText}');

      debugPrint("Print 2  ${response.data}");

      StudentTranscriptModel data =
          StudentTranscriptModel.fromJson(response.data);
      if (data.data!.isNotEmpty) {
        controller.filteredDataList.value = data.data!;
        debugPrint("Print 2  ${controller.filteredDataList.value[0]}");
      } else {
        setSnackbar("NPM Mahasiswa Tidak Ditemukan");
      }
    } catch (e) {
      throw Exception(null);
    }
  }
}
