import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/academic.dart';
import 'package:standard_project/module/grade/student/controller/student_controller.dart';

class KelasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetBuilder<AcademicController>(
      init: AcademicController(),
      builder: (AcademicController controller) {
        return MaterialApp(
            home: DefaultTabController(
                length: 4,
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Container(
                      color: AppColors.abukusuka,
                      width: AppSize.screenWidth,
                      child: Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 1120, left: 60, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Akademik",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.purplePiksi),
                                ),
                                Text("/",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text("Transkip kelas",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.purplePiksi))
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            margin: EdgeInsets.only(
                                top: 10, left: 50, right: 50, bottom: 50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  cari(),
                                  findstudent(),
                                  headersection(),
                                  methode(controller),
                                  buttonsection()
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                )));
      },
    );
  }

  Widget methode(controller) {
    return ConstrainedBox(
      constraints: BoxConstraints(),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: controller.academiclist.length,
        itemBuilder: (context, index) {
          return midlesection(controller.academiclist[index], context);
        },
      ),
    );
  }

  Widget cari() {
    return Container(
      margin: EdgeInsets.only(left: 308),
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Row(children: [
        Container(
          width: 400,
          height: 30,
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                labelText: 'masukan kelas',
                labelStyle: TextStyle(fontSize: 15)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "/",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 400,
          height: 30,
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                labelText: 'masukan matakuliah',
                labelStyle: TextStyle(fontSize: 15)),
          ),
        ),
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.blue),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }

  Widget findstudent() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 176),
                  child: Text(
                    "Program/Jurusan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 410,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
                Container(
                  width: 470,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Kelas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 900,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget headersection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Tahun",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Kode",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              width: 540,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Matakuliah",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "UTS",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "UAS",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "N.Akhir",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4),
                      right: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "SMT",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }

  Widget midlesection(academicmodel model, context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.No}")),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.KodeMatakuliah}")),
          ),
          Container(
            width: 540,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.NamaMatakuliah}")),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.SKS}")),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.UTS}")),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.UAS}")),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.5),
                  bottom: BorderSide(width: 0.5),
                  right: BorderSide(width: 0.5)),
            ),
            child: Center(child: Text("${model.NilaiHuruf}")),
          ),
        ],
      ),
    );
  }

  Widget buttonsection() {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.purplePiksi,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.print,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "Cetak Nilai Kelas",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}