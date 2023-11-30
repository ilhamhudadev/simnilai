//Example of Repo
//You might not use it
import 'package:standard_project/module/study/data/model/matakuliah.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as DioPlugin;

class StudyRepo {
  Future<MataKuliahModel> fetchtranskipData() async {
    debugPrint("Print 1");
    try {
      final Dio _dio = Dio();
      final response =
          await _dio.get('http://localhost:3000/api/matakuliah/2/10');

      debugPrint("Print 2  ${response.data}");

      MataKuliahModel data = MataKuliahModel.fromJson(response.data);

      debugPrint("Print 3 ");

      return data;
    } catch (e) {
      throw Exception(null);
    }
  }
}
