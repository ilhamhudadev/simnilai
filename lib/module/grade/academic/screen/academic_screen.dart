import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/academic.dart';

class AcademicScreen extends StatelessWidget {
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
                                right: 1100, left: 80, bottom: 15),
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
                                Text("Transkip Nilai",
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
                                top: 20, left: 50, right: 50, bottom: 50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
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
                                  tabcontrol(),
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
      constraints: BoxConstraints(minHeight: 0),
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
      padding: EdgeInsets.only(top: 10, left: 880),
      child: Row(children: [
        Container(
          width: 250,
          height: 30,
          margin: EdgeInsets.only(top: 10, left: 15),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Search'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 60,
          height: 30,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.blue),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ]),
    );
  }

  Widget findstudent() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "NPM",
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
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Nama Lengkap",
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
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Program/Jurusan",
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
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "No. HP",
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

  Widget tabcontrol() {
    return Container(
        width: 500,
        padding: EdgeInsets.only(top: 20),
        margin: EdgeInsets.only(right: 650),
        child: TabBar(
            indicatorColor: AppColors.purplePiksi,
            labelColor: Colors.black,
            tabs: [
              Container(
                  child: Tab(
                text: "Semester 1",
              )),
              Container(
                  child: Tab(
                text: "Semester 2",
              )),
              Container(
                  child: Tab(
                text: "Semester 3",
              )),
            ]));
  }

  Widget headersection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "No",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Kode Matakuliah",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              width: 340,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Nama Matakuliah",
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
                  "SKS",
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
              width: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Nilai Huruf",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 0.4),
                      top: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4),
                      right: BorderSide(width: 0.5)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Nilai Angka",
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
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.No}"),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.KodeMatakuliah}"),
          ),
          Container(
            width: 340,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.NamaMatakuliah}"),
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
            child: Text("${model.SKS}"),
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
            child: Text("${model.UTS}"),
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
            child: Text("${model.UAS}"),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.NilaiHuruf}"),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
                right: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.NilaiAngka}"),
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
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.purplePiksi,
                ),
                padding: EdgeInsets.only(left: 20, right: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.print,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "Cetak KHS",
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
