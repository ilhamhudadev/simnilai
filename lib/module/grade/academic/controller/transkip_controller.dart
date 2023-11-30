import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/variables/app_constant.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/transkipmodel.dart';
import 'package:standard_project/module/grade/academic/data/repo/academic_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/class_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/transkip_repo.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as DioPlugin;
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/profile/data/model/student_profile_model.dart';
import 'dart:io';
import 'package:pdf/widgets.dart' as pw;

class TranscriptApiController extends GetxController with TranscriptapiRepo {
  ScrollController scrollController = ScrollController();

  Future<StudentTranscriptModel> futuretranskipData() {
    return fetchtranskipData();
  }

  Future<void> getProfileMahasiswa() async {
    var searchText = searchController.value.text;
    debugPrint("Print search  ${searchText}");
    final Dio _dio = Dio();
    final response =
        await _dio.get('http://localhost:3000/api/student/user/$searchText');

    debugPrint("tes ${response.data}");

    StudentProfileModel data = StudentProfileModel.fromJson(response.data);

    if (data.data!.isNotEmpty) {
      dataMahasiswa.value = data.data!;
    } else {
      setSnackbar("NPM Mahasiswa Tidak Ditemukan");
    }
  }

  Future<void> getTranscriptData() async {
    var searchText = searchController.value.text;
    try {
      // DioPlugin.Response response = await ApiClient().postData(
      //   apiModel: SampleHitAPIConstant.urlAPIWilayah,
      // );

      final Dio _dio = Dio();
      final response = await _dio.get(
          'http://localhost:3000/api/akademik/nilai/transkript/${searchText}');

      StudentTranscriptModel data =
          StudentTranscriptModel.fromJson(response.data);
      if (data.data!.isNotEmpty) {
        filteredDataList.value = data.data!;
      } else {
        setSnackbar("NPM Mahasiswa Tidak Ditemukan");
      }
    } catch (e) {
      throw Exception(null);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  TextEditingController searchController = TextEditingController();
  RxList<DataNilaiTranscript> filteredDataList = <DataNilaiTranscript>[].obs;
  RxList<Data> dataMahasiswa = <Data>[].obs;
  String checkNilaiTotal(p, t1, uts, t2, uas) {
    var np = 0.1 * double.parse(p);
    var nt1 = 0.1 * double.parse(t1);
    var nt2 = 0.1 * double.parse(t2);
    var nuts = 0.3 * double.parse(uts);
    var nuas = 0.4 * double.parse(uas);

    var nilaiTotal = np + nt1 + nt2 + nuts + nuas;

    return nilaiTotal.toStringAsFixed(0);
  }

  String checkNilaiHuruf(p, t1, uts, t2, uas) {
    var np = 0.1 * double.parse(p);
    var nt1 = 0.1 * double.parse(t1);
    var nt2 = 0.1 * double.parse(t2);
    var nuts = 0.3 * double.parse(uts);
    var nuas = 0.4 * double.parse(uas);

    var nilaiTotal = np + nt1 + nt2 + nuts + nuas;

    if (nilaiTotal >= 85) {
      return "A";
    } else if (nilaiTotal >= 80 && nilaiTotal < 85) {
      return "AB";
    } else if (nilaiTotal >= 75 && nilaiTotal < 80) {
      return "B";
    } else if (nilaiTotal >= 70 && nilaiTotal < 75) {
      return "BC";
    } else if (nilaiTotal >= 60 && nilaiTotal < 70) {
      return "C";
    } else if (nilaiTotal >= 50 && nilaiTotal < 60) {
      return "D";
    } else {
      return "E";
    }
  }

  double getIPK(totalsks, totalnilai) {
    double data =
        double.parse(totalnilai.toString()) / double.parse(totalsks.toString());

    double ipk = data / 25.0;

    return ipk;
  }

  double calculateAverage(List<int> values) {
    if (values.isEmpty) {
      return 0.0;
    }

    int sum = 0;
    for (int value in values) {
      sum += value;
    }

    double average = sum / values.length;
    return average;
  }

  // Future<void> printKHS() async {
  //   final font = await rootBundle.load("assets/open-sans.ttf");
  //   final ttf = pw.Font.ttf(font);
  //   final pdf = pw.Document();

  //   pdf.addPage(
  //     pw.Page(
  //       build: (pw.Context context) => pw.Center(
  //         child: pw.Text(
  //           'Hello World!',
  //           style: TextStyle(fontFamily: ttf)!
  //         ),
  //       ),
  //     ),
  //   );

  //   final file = File('example.pdf');
  //   await file.writeAsBytes(await pdf.save());
  // }
}
