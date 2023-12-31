import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';
import 'package:standard_project/module/grade/academic/controller/class_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/academicmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';

class AcademicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    return GetBuilder<AcademicapiController >(
      init: AcademicapiController (),
      builder: (AcademicapiController  controller) {
        return Scaffold(
            body: FutureBuilder<List<ApiacademicModel>>(
                future: controller.futureacademicData(),
                builder: (context, Response) {
                  if (Response.hasData) {
                    var value = Response.data;
                    return MaterialApp(
                        home: DefaultTabController(
                            length: 4,
                            child: Scaffold(
                                body: SingleChildScrollView(
                              controller: _vertical,
                              scrollDirection: Axis.vertical,
                              child: SingleChildScrollView(
                                controller: _horizontal,
                                scrollDirection: Axis.horizontal,
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
                                            right: 1030, left: 60, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Mahasiswa",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.purplePiksi),
                                            ),
                                            Text("/",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text("Transkip Nilai",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.purplePiksi))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 950,
                                        height: 80,
                                        padding: EdgeInsets.only(
                                            bottom: 20, top: 10),
                                        margin: EdgeInsets.only(
                                            top: 10, right: 210, bottom: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 20,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: cari(),
                                      ),
                                      Container(
                                        width: 950,
                                        padding: EdgeInsets.only(
                                            top: 20, bottom: 20),
                                        margin: EdgeInsets.only(
                                            top: 20, right: 210, bottom: 50),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              spreadRadius: 5,
                                              blurRadius: 20,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              findstudent(),
                                              tabcontrol(),
                                              headersection(),
                                              ListView.builder(
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  controller: controller
                                                      .scrollController,
                                                  shrinkWrap: true,
                                                  itemCount: value!.length,
                                                  itemBuilder:
                                                      ((context, index) {
                                                    return Container(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 40,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Center(
                                                                child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            )),
                                                          ),
                                                          Container(
                                                            width: 180,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Center(
                                                                child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            )),
                                                          ),
                                                          Container(
                                                            width: 300,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 50,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 50,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 50,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 80,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Center(
                                                                child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            )),
                                                          ),
                                                          Container(
                                                            width: 90,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                left: BorderSide(
                                                                    width: 0.5),
                                                                bottom:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                                right:
                                                                    BorderSide(
                                                                        width:
                                                                            0.5),
                                                              ),
                                                            ),
                                                            child: Center(
                                                                child: Text(
                                                              "${value[index].id}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            )),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })),
                                              lastsection(),
                                              buttonsection()
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ))));
                  } else {
                    return Center(
                      child: Text("data tidak ada"),
                    );
                  }
                }));
      },
    );
  }

  Widget cari() {
    return Container(
      margin: EdgeInsets.only(left: 390),
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Row(children: [
        Container(
          width: 288,
          height: 30,
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Search',
                labelStyle: TextStyle(fontSize: 12)),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.blue),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        Container(
          width: 100,
          height: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.refresh_sharp,
                size: 20,
                color: Colors.white,
              ),
              Text(
                "Refresh",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
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
            padding: EdgeInsets.only(top: 10, left: 60, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "NPM",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  width: 690,
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
            padding: EdgeInsets.only(top: 10, left: 60, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Nama Lengkap",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  width: 690,
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
            padding: EdgeInsets.only(top: 10, left: 60, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 55),
                  child: Text(
                    "Program/Jurusan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
                Container(
                  width: 340,
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
            padding: EdgeInsets.only(top: 10, left: 60, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Kelas",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  width: 690,
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
            padding: EdgeInsets.only(top: 10, left: 60, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "No. HP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  width: 690,
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
        margin: EdgeInsets.only(right: 330),
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
            width: 40,
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
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 180,
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
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              width: 300,
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
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
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
                  "SKS",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
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
                  "UTS",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
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
                  "UAS",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Center(
                  child: Text(
                    "Nilai Huruf",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Container(
              width: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 0.4),
                      top: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4),
                      right: BorderSide(width: 0.5)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Center(
                  child: Text(
                    "Nilai Angka",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget lastsection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.5), bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("Total SKS :",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5), left: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text(
              "Total IPS :",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5),
                  left: BorderSide(width: 0.5),
                  right: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget buttonsection() {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 55),
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
